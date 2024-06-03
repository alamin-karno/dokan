import 'package:dokan/features/shop/shop.dart';

class StoreModel {
  int? id;
  String? name;
  String? url;
  String? avatar;
  StoreAddress? address;

  StoreModel({
    this.id,
    this.name,
    this.url,
    this.avatar,
    this.address,
  });

  StoreModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    url = json['url']?.toString();
    avatar = json['avatar']?.toString();
    address = (json['address'] != null)
        ? StoreAddress.fromJson(json['address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['url'] = url;
    data['avatar'] = avatar;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    return data;
  }
}
