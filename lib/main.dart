import 'package:flutter/material.dart';
import 'package:socialite/home/home.dart';
import 'package:socialite/questions/question.dart';
import 'package:socialite/utils/constants.dart';

void main() =>
    runApp(MaterialApp(
      home: SocialiteHome(),
    ));

class SocialiteHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: COLOR_WHITE, accentColor: COLOR_BLACK, textTheme: TEXT_THEME_DEFAULT),
      initialRoute: '/home',
      routes: {
        '/home' : (context) => HomeScreen(),
        '/profile' : (context) => Profile(),
      },
    );
  }
}



