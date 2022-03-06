import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matheus Figueredo Bispo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1E2A50),
        textTheme: TextTheme(
          headline1: GoogleFonts.sarabun(),
          headline2: GoogleFonts.sanchez(),
        ),
      ),
      home: const App(),
    );
  }
}
