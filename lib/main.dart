import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.lato().fontFamily),
      
      // initialRoute: "/home",
      
      
      routes: {
        "/":(context) => LoginPage(),
         "/home": (context) => HomePage(),
        "/login":(context) => LoginPage()
      },
      );
  }
}                            