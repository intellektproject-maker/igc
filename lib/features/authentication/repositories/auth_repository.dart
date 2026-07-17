import '../models/login_request_model.dart';
import '../models/login_response_model.dart';
import '../../../shared/models/user_model.dart';

abstract class AuthRepository {
  /// Authenticate user
  Future<LoginResponseModel> login(
      LoginRequestModel request,
      );

  /// Logout current user
  Future<void> logout();

  /// Get current logged in user
  Future<UserModel?> getCurrentUser();

  /// Check whether a user is logged in
  Future<bool> isLoggedIn();
}