import 'package:dokan/core/common/models/models.dart';

class UserResponseModel {
  int? id;
  String? name;
  String? url;
  String? description;
  String? link;
  String? slug;
  AvatarUrls? avatarUrls;
  List<MetaData?>? metaData;
  LinkModel? links;

  UserResponseModel({
    this.id,
    this.name,
    this.url,
    this.description,
    this.link,
    this.slug,
    this.avatarUrls,
    this.metaData,
    this.links,
  });

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    url = json['url']?.toString();
    description = json['description']?.toString();
    link = json['link']?.toString();
    slug = json['slug']?.toString();
    avatarUrls = (json['avatar_urls'] != null)
        ? AvatarUrls.fromJson(json['avatar_urls'])
        : null;
    if (json['meta_data'] != null) {
      metaData = List<MetaData>.from(
          json['meta_data'].map((x) => MetaData.fromJson(x)));
    }
    links =
        (json['_links'] != null) ? LinkModel.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['url'] = url;
    data['description'] = description;
    data['link'] = link;
    data['slug'] = slug;
    if (avatarUrls != null) {
      data['avatar_urls'] = avatarUrls!.toJson();
    }
    if (metaData != null) {
      final v = metaData;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['meta_data'] = arr0;
    }
    if (links != null) {
      data['_links'] = links!.toJson();
    }
    return data;
  }
}

class AvatarUrls {
  String? the24;
  String? the48;
  String? the96;

  AvatarUrls({
    this.the24,
    this.the48,
    this.the96,
  });

  AvatarUrls.fromJson(Map<String, dynamic> json) {
    the24 = json['24']?.toString();
    the48 = json['48']?.toString();
    the96 = json['96']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['24'] = the24;
    data['48'] = the48;
    data['96'] = the96;
    return data;
  }
}
