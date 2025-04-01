//giriş ekranım
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A2526), // Üst kısım
              Color(0xFF0A1516), // Alt kısım
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Üst kısım: Başlık ve ikon
                Column(
                  children: [
                    const SizedBox(height: 20), // Üstten boşluk
                    const Text(
                      'KONTROL SİSTEMİ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 244, 243, 243),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Icon(
                      Icons.person,
                      size: 80,
                      color: const Color(0xFFB0BEC5), // Gri ikon
                    ),
                    const SizedBox(height: 50),
                    // Giriş alanları
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(color: Color(0xFFFFFFFF)),
                            decoration: InputDecoration(
                              hintText: 'Kullanıcı Adı',
                              hintStyle: const TextStyle(
                                color: Color(0xB3FFFFFF), // Opak beyaz
                                fontSize: 16,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFC107), // Sarı kenar
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFC107),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 0, 1, 7)
                                  .withOpacity(0.6), // Siyah arka plan
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            style: const TextStyle(color: Color(0xFFFFFFFF)),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Şifre',
                              hintStyle: const TextStyle(
                                color: Color(0xB3FFFFFF),
                                fontSize: 16,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFC107),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFC107),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 0, 1, 7)
                                  .withOpacity(0.6),
                            ),
                          ),
                          const SizedBox(height: 30),
                          // Giriş Yap butonu
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFC107), // Sarı
                              padding: const EdgeInsets.symmetric(
                                horizontal: 60,
                                vertical: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Giriş Yap',
                              style: TextStyle(
                                color: Color(0xFF000000),
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
                // Alt kısım: Turkish Ground Services ve TGS
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      Text(
                        'TURKISH GROUND SERVICES',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'TGS',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

           