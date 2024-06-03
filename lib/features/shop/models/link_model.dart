import 'package:dokan/features/shop/shop.dart';

class LinkModel {
  List<LinkSelf?>? self;
  List<LinkCollection?>? collection;

  LinkModel({this.self, this.collection});

  LinkModel.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      final v = json['self'];
      final arr0 = <LinkSelf>[];
      v.forEach((v) {
        arr0.add(LinkSelf.fromJson(v));
      });
      self = arr0;
    }
    if (json['collection'] != null) {
      final v = json['collection'];
      final arr0 = <LinkCollection>[];
      v.forEach((v) {
        arr0.add(LinkCollection.fromJson(v));
      });
      collection = arr0;
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (self != null) {
      final v = self;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['self'] = arr0;
    }
    if (collection != null) {
      final v = collection;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['collection'] = arr0;
    }
    return data;
  }
}
