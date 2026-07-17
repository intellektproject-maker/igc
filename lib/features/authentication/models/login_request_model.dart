class LoginRequestModel {
  final String businessCode;
  final String password;

  const LoginRequestModel({
    required this.businessCode,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'businessCode': businessCode.trim(),
      'password': password,
    };
  }
}