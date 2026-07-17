import 'package:go_router/go_router.dart';

import '../core/constants/route_names.dart';
import '../features/authentication/screens/login_screen.dart';
import '../features/authentication/screens/splash_screen.dart';
import '../features/authentication/screens/welcome_screen.dart';
import '../features/student/dashboard/screens/student_dashboard_screen.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: RouteNames.splash,
    routes: [
      GoRoute(
        path: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: RouteNames.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),

      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),

      GoRoute(
        path: RouteNames.student,
        builder: (context, state) => const StudentDashboardScreen(),
      ),
    ],
  );
}