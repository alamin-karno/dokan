class DownloadModel {
  String? id;
  String? name;
  String? file;

  DownloadModel({
    this.id,
    this.name,
    this.file,
  });

  DownloadModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name']?.toString();
    file = json['file']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['file'] = file;
    return data;
  }
}
