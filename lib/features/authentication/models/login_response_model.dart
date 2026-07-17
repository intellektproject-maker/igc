import '../../../shared/models/user_model.dart';

class LoginResponseModel {
  final bool success;
  final String message;
  final UserModel? user;
  final String? accessToken;
  final String? refreshToken;

  const LoginResponseModel({
    required this.success,
    required this.message,
    this.user,
    this.accessToken,
    this.refreshToken,
  });
}