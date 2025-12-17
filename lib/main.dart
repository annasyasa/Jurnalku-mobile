import 'package:flutter/material.dart';
import 'package:jurnalku_mobile/jurnal_pembiasaan.dart';
import 'package:jurnalku_mobile/login.dart';
import 'package:jurnalku_mobile/panduanpengguna/panduan_mengisi_jurnal.dart';
import 'package:jurnalku_mobile/profile.dart';
import 'home.dart';
import 'package:jurnalku_mobile/dashboard.dart';

// import 'package:jurnalku_mobile/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jurnalku',

      home: const Login(),
    );
  }
}

