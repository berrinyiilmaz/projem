//dashboard ekranım 
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Login Screen'),
    ),
    body: Center( // Ekranın ortasına yerleştirmek için Center kullanıyorsun
      child: Text("dashboard ekranım"), // Text widget'ını buraya ekliyorsun
    ),
  );
}