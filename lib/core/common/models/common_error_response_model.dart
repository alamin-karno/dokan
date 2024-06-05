class CommonErrorResponseModel {
  String? code;
  String? message;
  Data? data;

  CommonErrorResponseModel({
    this.code,
    this.message,
    this.data,
  });

  CommonErrorResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code']?.toString();
    message = json['message']?.toString();
    data = (json['data'] != null) ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    data['data'] = this.data?.toJson();
    return data;
  }
}

class Data {
  int? status;

  Data({this.status});

  Data.fromJson(Map<String, dynamic> json) {
    status = json['status']?.toInt();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}
