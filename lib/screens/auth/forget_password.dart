import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/localizations.dart';
import '../../widgets/header.dart';
import '../../widgets/footer.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
              colorScheme.surfaceDim,
              colorScheme.surface,
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
                    HeaderWidget(
                        title: localizations.getTranslate('forget_password')),
                    const SizedBox(height: 20),
                    Text(
                      localizations.getTranslate('reset_password'),
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Icon(
                      Icons.lock_reset,
                      size: 80,
                      color: colorScheme.secondary,
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          TextField(
                            controller: _emailController,
                            style: TextStyle(color: colorScheme.onSurface),
                            decoration: InputDecoration(
                              hintText: localizations.getTranslate('email'),
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
                          const SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(localizations
                                      .getTranslate('reset_link_sent')),
                                  backgroundColor: colorScheme.primary,
                                ),
                              );
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
                              localizations.getTranslate('reset_password'),
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
                              context.go('/login');
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
                              localizations.getTranslate('back_to_login'),
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
