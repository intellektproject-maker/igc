import '../../../shared/models/user_model.dart';

class AuthSessionModel {
  final UserModel user;
  final String accessToken;
  final String refreshToken;

  const AuthSessionModel({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
  });
}