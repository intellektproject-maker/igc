import '../../../shared/models/user_model.dart';
import '../mock/auth_mock_data.dart';
import '../models/login_request_model.dart';
import '../models/login_response_model.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  UserModel? _currentUser;

  @override
  Future<LoginResponseModel> login(
      LoginRequestModel request,
      ) async {
    await Future.delayed(const Duration(seconds: 1));

    try {
      final mockUser = AuthMockData.users.firstWhere(
            (user) =>
        user.user.businessCode.trim().toLowerCase() ==
            request.businessCode.trim().toLowerCase() &&
            user.password == request.password,
      );

      _currentUser = mockUser.user;

      return LoginResponseModel(
        success: true,
        message: 'Login Successful',
        user: mockUser.user,
        accessToken: 'mock_access_token',
        refreshToken: 'mock_refresh_token',
      );
    } catch (_) {
      return const LoginResponseModel(
        success: false,
        message: 'Invalid Business ID or Password',
      );
    }
  }

  @override
  Future<void> logout() async {
    _currentUser = null;
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    return _currentUser;
  }

  @override
  Future<bool> isLoggedIn() async {
    return _currentUser != null;
  }
}