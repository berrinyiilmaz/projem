import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/localizations.dart';
import '../../widgets/footer.dart';
import '../../widgets/header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surfaceDim, // Top gradient
              colorScheme.surface, // Bottom gradient
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    HeaderWidget(title: localizations.getTranslate('login')),
                    const SizedBox(height: 20),
                    Text(
                      localizations.getTranslate('control_system'),
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Icon(
                      Icons.person,
                      size: 80,
                      color: colorScheme.secondary,
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: colorScheme.onSurface),
                            decoration: InputDecoration(
                              hintText: localizations.getTranslate('username'),
                              hintStyle: TextStyle(
                                color: colorScheme.onSurface.withOpacity(0.7),
                                fontSize: 16,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorScheme.outline,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorScheme.primary,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: colorScheme.surfaceContainer,
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            style: TextStyle(color: colorScheme.onSurface),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: localizations.getTranslate('password'),
                              hintStyle: TextStyle(
                                color: colorScheme.onSurface.withOpacity(0.7),
                                fontSize: 16,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorScheme.outline,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorScheme.primary,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: colorScheme.surfaceContainer,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                context.go('/forget-password');
                              },
                              child: Text(
                                localizations.getTranslate('forget_password'),
                                style: TextStyle(
                                  color: colorScheme.primary,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              context.go('/dashboard');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorScheme.primary,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 60,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              localizations.getTranslate('login'),
                              style: TextStyle(
                                color: colorScheme.onPrimary,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              context.go('/register');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 60,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: colorScheme.primary,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              localizations.getTranslate('register'),
                              style: TextStyle(
                                color: colorScheme.primary,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
