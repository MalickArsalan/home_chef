import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './const.dart';

ThemeData getTheme() {
  return ThemeData(
    textTheme: TextTheme(
      headline3: TextStyle(
        color: darkBrown,
        fontFamily: GoogleFonts.lacquer().fontFamily,
      ),
      caption: TextStyle(color: darkBrown),
      overline: TextStyle(color: darkBrown),
      button: TextStyle(color: darkBrown),
    ),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.brown),
      color: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.brown,
        ),
      ),
    ),
  );
}
