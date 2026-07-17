import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/models/user_model.dart';
import '../models/login_request_model.dart';
import '../repositories/auth_repository.dart';
import '../repositories/auth_repository_impl.dart';

final authRepositoryProvider = Provider<AuthRepository>(
      (ref) => AuthRepositoryImpl(),
);

final authProvider =
StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    ref.read(authRepositoryProvider),
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _repository;

  AuthNotifier(this._repository) : super(const AuthState());

  Future<bool> login({
    required String businessCode,
    required String password,
  }) async {
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
    );

    final response = await _repository.login(
      LoginRequestModel(
        businessCode: businessCode,
        password: password,
      ),
    );

    if (response.success) {
      state = state.copyWith(
        isLoading: false,
        currentUser: response.user,
      );

      return true;
    }

    state = state.copyWith(
      isLoading: false,
      errorMessage: response.message,
    );

    return false;
  }

  Future<void> logout() async {
    await _repository.logout();

    state = const AuthState();
  }
}

class AuthState {
  final UserModel? currentUser;
  final bool isLoading;
  final String? errorMessage;

  const AuthState({
    this.currentUser,
    this.isLoading = false,
    this.errorMessage,
  });

  bool get isAuthenticated => currentUser != null;

  AuthState copyWith({
    UserModel? currentUser,
    bool? isLoading,
    String? errorMessage,
  }) {
    return AuthState(
      currentUser: currentUser ?? this.currentUser,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}