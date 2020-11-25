import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
const COLOR_WHITE = Colors.white;
const COLOR_GREY_BOX = Color.fromRGBO(241, 243, 244,1.0);

//Font Colors
const COLOR_FONT_LIGHT = Color.fromRGBO(146, 146, 146,1.0);
const COLOR_FONT_DARK = Color.fromRGBO(84, 84, 84,1.0);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w400, fontSize: 15),
    headline5: TextStyle(
        color: COLOR_FONT_LIGHT, fontWeight: FontWeight.w300, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: COLOR_BLACK, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    bodyText2: TextStyle(
        color:  COLOR_FONT_LIGHT, fontSize: 14, fontWeight: FontWeight.w500,height: 1.5),
    subtitle1:
    TextStyle(color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_FONT_LIGHT, fontSize: 12, fontWeight: FontWeight.w400));
