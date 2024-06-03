class StoreAddress {
  String? street_1;
  String? street_2;
  String? city;
  String? zip;
  String? country;
  String? state;

  StoreAddress({
    this.street_1,
    this.street_2,
    this.city,
    this.zip,
    this.country,
    this.state,
  });

  StoreAddress.fromJson(Map<String, dynamic> json) {
    street_1 = json['street_1']?.toString();
    street_2 = json['street_2']?.toString();
    city = json['city']?.toString();
    zip = json['zip']?.toString();
    country = json['country']?.toString();
    state = json['state']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['street_1'] = street_1;
    data['street_2'] = street_2;
    data['city'] = city;
    data['zip'] = zip;
    data['country'] = country;
    data['state'] = state;
    return data;
  }
}
