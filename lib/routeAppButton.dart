import 'package:flutter/material.dart';
import 'courseScreen.dart';

class routeAppButton extends StatelessWidget{
  String text;
  String path;
  String courseText;
  Function onButtonCliked;
  routeAppButton({required this.text,required this.onButtonCliked,required this.path,required this.courseText});
  @override
  Widget build(BuildContext context) {
   return Container(
         margin: EdgeInsets.symmetric(horizontal: 4),
         child: ElevatedButton(onPressed: (){
           onButtonCliked(context,path,courseText);
         },
           child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
           style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(16, 74, 210,1),
               fixedSize: Size(40, 50),
               shape: RoundedRectangleBorder(
                 borderRadius:BorderRadius.all(Radius.circular(10)),
               )
           ),)
   );
  }

}