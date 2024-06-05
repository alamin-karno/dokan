class CommonResponseModel {
  int? code;
  String? message;

  CommonResponseModel({
    this.code,
    this.message,
  });

  CommonResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code']?.toInt();
    message = json['message']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}
