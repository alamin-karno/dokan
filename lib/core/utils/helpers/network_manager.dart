import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dokan/core/utils/popups/popups.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Manages the network connectivity status and
/// provides methods to check and handle connectivity changes.
class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  /// Initialize the network manager and set up a stream to continually check the connection status.
  @override
  void onInit() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.onInit();
  }

  /// Update the connection status based on changes in connectivity and show a relevant popup for no internet connection.
  void _updateConnectionStatus(List<ConnectivityResult> results) {
    log('- ${results.toList()}', name: 'CONNECTIONS');

    if (results.contains(ConnectivityResult.none)) {
      AppLoaders.warningSnackBar(
        title: 'No Internet Connection',
        message: 'Please enable data or wifi connection to continue!',
      );
    }
  }

  /// Check the internet connection.
  /// Returns `true` if connected, `false` otherwise.
  Future<bool> isConnected() async {
    try {
      final List<ConnectivityResult> result =
          await _connectivity.checkConnectivity();

      if (result.contains(ConnectivityResult.none)) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  /// Dispose or close the active connectivity stream.
  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
