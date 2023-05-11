import 'dart:html';

import 'package:binus_mart/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:fluro/fluro.dart';
import 'package:dio/dio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:binus_mart/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final Color primaryColor = Colors.white;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final MaterialColor primaryMaterialColor = MaterialColor(
      primaryColor.value,
      <int, Color>{
        50: primaryColor,
        100: primaryColor,
        200: primaryColor,
        300: primaryColor,
        400: primaryColor,
        500: primaryColor,
        600: primaryColor,
        700: primaryColor,
        800: primaryColor,
        900: primaryColor,
      },
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryMaterialColor,
      ),
      home: HomePage(),
    );
  }
}


