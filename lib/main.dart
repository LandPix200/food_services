// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_services/pages/discover.dart';
import 'package:food_services/pages/global.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-vents',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.andika(
            fontSize: 16,
          ),
          headline1: GoogleFonts.fredokaOne(
            fontSize: 22,
            color: Colors.orange.shade700,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange.withOpacity(0.8),
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      ),
      home: const MyHomePage(title: 'Food Servises'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DiscoverPage(),
    );
  }
}
