class CategoryModel {
  int? id;
  String? name;
  String? slug;

  CategoryModel({this.id, this.name, this.slug});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    slug = json['slug']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    return data;
  }
}
