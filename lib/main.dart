import 'package:clubhouse/constants.dart';
import 'package:clubhouse/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'clubhouse',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: kBackgroundcolor ),
        primaryColor: kWhite,
        accentColor: kAccentcolor,
        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(),
        scaffoldBackgroundColor: kBackgroundcolor

      ),
      home: Homepage(),
      
    );
  }
}
