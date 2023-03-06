import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

MyTheme myTheme = MyTheme();

//class MyTheme with ChangeNotifier{
class MyTheme{

  static ThemeData get controlScreenTheme{
    return ThemeData(
      primaryColor: dark_gray_1,
      accentColor: light_gray_2,
      backgroundColor: dark_blue,
      scaffoldBackgroundColor: Colors.white,

      fontFamily: GoogleFonts.roboto.toString(),

      textTheme: TextTheme(
        headline1: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        headline2: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        headline3: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        headline4: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        headline5: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        headline6: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold
          )
        ),
        bodyText1: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        bodyText2: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: dark_gray_1, 
            fontWeight: FontWeight.bold
          )
        ),
        button: GoogleFonts.roboto(
          textStyle: const TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.w900,
          )
        ),
      ),

    );
  }

}