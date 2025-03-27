//kayıt ekranım
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('register.dart'),
    ),
    body: Center( // Ekranın ortasına yerleştirmek için Center kullanıyorsun
      child: Text("kayit Ekranim"), // Text widget'ını buraya ekliyorsun
    ),
  );
}