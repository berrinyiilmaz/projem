//profil ekranım
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('profil screen'),
    ),
    body: Center( // Ekranın ortasına yerleştirmek için Center kullanıyorsun
      child: Text("profil ekranım"), // Text widget'ını buraya ekliyorsun
    ),
  );
}