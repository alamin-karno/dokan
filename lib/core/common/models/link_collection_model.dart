class LinkCollection {
  String? href;

  LinkCollection({this.href});

  LinkCollection.fromJson(Map<String, dynamic> json) {
    href = json['href']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}
