

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialite/service/questions.dart';
import 'package:socialite/utils/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String question = 'Loading..';
  String answer="";

  void getQuestion() async{
    QuestionData instance = QuestionData();
    await instance.getData();
    setState(() {
      question = instance.question;
      answer = instance.answer;
    });
    print(instance.answer);
  }

  @override
  void initState() {
    super.initState();
    getQuestion();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: COLOR_GREY_BOX,
        title: Text('Questions')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize:  MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(question, style: themeData.textTheme.headline1 ,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(answer, style: themeData.textTheme.headline3 ),
          )
        ],
      ),
    ));
  }
}

