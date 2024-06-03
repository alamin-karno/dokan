class DimensionModel {
  String? length;
  String? width;
  String? height;

  DimensionModel({this.length, this.width, this.height});

  DimensionModel.fromJson(Map<String, dynamic> json) {
    length = json['length']?.toString();
    width = json['width']?.toString();
    height = json['height']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['length'] = length;
    data['width'] = width;
    data['height'] = height;
    return data;
  }
}
