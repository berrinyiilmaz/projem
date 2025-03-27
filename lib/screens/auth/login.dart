//giriş ekranım
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Login Screen'),
    ),
    body: Center( // Ekranın ortasına yerleştirmek için Center kullanıyorsun
      child: Text("Giris Ekranim"), // Text widget'ını buraya ekliyorsun
    ),
  );
}