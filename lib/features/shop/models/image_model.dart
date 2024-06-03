class ImageModel {
  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;
  int? position;

  ImageModel({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
    this.position,
  });

  ImageModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    dateCreated = json['date_created']?.toString();
    dateCreatedGmt = json['date_created_gmt']?.toString();
    dateModified = json['date_modified']?.toString();
    dateModifiedGmt = json['date_modified_gmt']?.toString();
    src = json['src']?.toString();
    name = json['name']?.toString();
    alt = json['alt']?.toString();
    position = json['position']?.toInt();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date_created'] = dateCreated;
    data['date_created_gmt'] = dateCreatedGmt;
    data['date_modified'] = dateModified;
    data['date_modified_gmt'] = dateModifiedGmt;
    data['src'] = src;
    data['name'] = name;
    data['alt'] = alt;
    data['position'] = position;
    return data;
  }
}
