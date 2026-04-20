import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/authentication/presentation/screens/forgetpassword_screen.dart';
import '../features/task_management/presentation/screens/main_screen.dart';
import '../features/authentication/presentation/screens/register_screen.dart';
import '../features/authentication/presentation/screens/signin_screen.dart';

part 'routes.g.dart';

enum AppRoutes {
  main,
  signIn,
  register,
  forgotPassword
}


@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/main',
    debugLogDiagnostics: true,
    redirect: (context, state){
      
    },
    //refreshListenable: ,

    routes: [
      GoRoute(
        path: '/main',
        name: AppRoutes.main.name,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/signIn',
        name: AppRoutes.signIn.name,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: '/register',
        name: AppRoutes.register.name,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/forgotPassword',
        name: AppRoutes.forgotPassword.name,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
    ],
  );
}