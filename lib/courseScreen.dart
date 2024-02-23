import 'package:flutter/material.dart';

class courseScreen extends StatelessWidget{
  static const routeName='and';
  String courseText='';
  String imagepath='';
  courseScreen({required this.imagepath,required this.courseText});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor: Color.fromRGBO(16, 74, 210,1),title: Text('Route App One'),),
     body:
     Container(
       width: double.infinity,
     height: double.infinity,
     decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/Bg.jpg',),fit: BoxFit.cover)),
       child: ListView(
         children: [
           Container(
               margin: EdgeInsets.all(14),
               child: Image.asset(imagepath),
           ),
           Container(
             padding: EdgeInsets.all(20),
             child: Text(courseText,style:TextStyle(color: Colors.white,
                 fontSize: 25)),
           )
         ],
       ),
     ),
   );
  }
}