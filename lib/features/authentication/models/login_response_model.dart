class LoginResponseModel {
  String? token;
  String? userEmail;
  String? userNickname;
  String? userDisplayName;

  LoginResponseModel({
    this.token,
    this.userEmail,
    this.userNickname,
    this.userDisplayName,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token']?.toString();
    userEmail = json['user_email']?.toString();
    userNickname = json['user_nicename']?.toString();
    userDisplayName = json['user_display_name']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['token'] = token;
    data['user_email'] = userEmail;
    data['user_nicename'] = userNickname;
    data['user_display_name'] = userDisplayName;
    return data;
  }
}
