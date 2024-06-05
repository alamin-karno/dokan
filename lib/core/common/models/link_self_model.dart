class LinkSelf {
  String? href;

  LinkSelf({this.href});

  LinkSelf.fromJson(Map<String, dynamic> json) {
    href = json['href']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}
