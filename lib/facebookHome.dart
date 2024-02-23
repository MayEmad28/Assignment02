import 'package:flutter/material.dart';
import 'postClass.dart';
import 'storyStack.dart';

class facebookHome extends StatelessWidget{
  static const String routeName='home';
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Home'),backgroundColor: Colors.indigo,),
    body: Column(
      children: [
        //story
         Expanded(
           child: ListView.builder(
               scrollDirection:Axis.horizontal ,
               itemBuilder: (context,index){
             return storyStack();
           }
           ),
         ),
        //post
        postClass(),
        Divider(
          color: Colors.black,
        ),
        postClass(),

      ],
    ),
  );
  }
}