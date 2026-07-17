import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/route_names.dart';
import '../../../core/design_system/design_system.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../providers/auth_provider.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _businessCodeController =
  TextEditingController();

  final TextEditingController _passwordController =
  TextEditingController();

  @override
  void dispose() {
    _businessCodeController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    FocusScope.of(context).unfocus();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    final notifier = ref.read(authProvider.notifier);

    final success = await notifier.login(
      businessCode: _businessCodeController.text.trim(),
      password: _passwordController.text.trim(),
    );

    if (!mounted) return;

    final authState = ref.read(authProvider);

    if (!success) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            authState.errorMessage ?? "Invalid Business ID or Password",
          ),
        ),
      );
      return;
    }

    final user = authState.currentUser;

    if (user == null) return;

    // Temporary navigation
    // Later this will navigate according to the user's role.
    context.go(RouteNames.student);
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextField(
            controller: _businessCodeController,
            hintText: "Business Code / User ID",
            prefixIcon: Icons.person_outline,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Please enter your Business Code";
              }
              return null;
            },
          ),

          const SizedBox(
            height: AppSpacing.lg,
          ),

          AppTextField(
            controller: _passwordController,
            hintText: "Password",
            prefixIcon: Icons.lock_outline,
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your password";
              }
              return null;
            },
          ),

          const SizedBox(
            height: AppSpacing.xxl,
          ),

          SizedBox(
            width: double.infinity,
            child: AppButton(
              text: authState.isLoading ? "Logging in..." : "Login",
              onPressed: authState.isLoading ? null : _login,
            ),
          ),
        ],
      ),
    );
  }
}