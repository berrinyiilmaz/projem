import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/auth/login.dart';         // LoginScreen
import '../screens/auth/register.dart';     // RegisterScreen
import '../screens/auth/forget.password.dart'; // ForgetPasswordScreen
import '../screens/client/profile.dart';     // ProfileScreen
import '../screens/dashboard/dashboard.dart'; // DashboardScreen
import '../screens/auth/home.dart';
// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(), // Başlangıç ekranı olarak LoginScreen
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/forget-password',
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    ],
);
