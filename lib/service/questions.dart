

import 'dart:convert';
import 'package:http/http.dart';

class QuestionData {
  String question;
  String answer;

 Future<void>  getData() async {
   try {
     Response response = await get(
         "https://jsonplaceholder.typicode.com/posts/1");
     Map data = jsonDecode(response.body);
     question = data['title'];
     answer = data['body'];
   }catch(e){
     question = 'something wrong';
     answer = '';
   }
 }
}