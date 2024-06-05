import 'package:dokan/core/common/models/models.dart';

class UserResponseModel {
  int? id;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? email;
  String? url;
  String? description;
  String? link;
  String? nickname;
  String? slug;
  AvatarUrls? avatarUrls;
  List<MetaData?>? metaData;
  LinkModel? links;

  UserResponseModel({
    this.id,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.url,
    this.description,
    this.link,
    this.nickname,
    this.slug,
    this.avatarUrls,
    this.metaData,
    this.links,
  });

  String? get fullName =>
      firstName != null && firstName != '' && lastName != null && lastName != ''
          ? '$firstName $lastName'
          : null;

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    username = json['username']?.toString();
    name = json['name']?.toString();
    firstName = json['first_name']?.toString();
    lastName = json['last_name']?.toString();
    email = json['email']?.toString();
    url = json['url']?.toString();
    description = json['description']?.toString();
    link = json['link']?.toString();
    nickname = json['nickname']?.toString();
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
    data['username'] = username;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['url'] = url;
    data['description'] = description;
    data['link'] = link;
    data['nickname'] = nickname;
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
