//şifremi unuttum ekranım
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('forget.password Screen'),
    ),
    body: Center( // Ekranın ortasına yerleştirmek için Center kullanıyorsun
      child: Text("sifremi unuttum ekranım"), // Text widget'ını buraya ekliyorsun
    ),
  );
}