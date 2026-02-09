import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/breathing/presentation/screens/breathing_screen.dart';
import '../../features/breathing/presentation/screens/home_screen.dart';

abstract final class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/breathe',
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const BreathingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurvedAnimation(parent: animation, curve: Curves.easeIn),
              child: child,
            );
          },
        ),
      ),
    ],
  );
}
