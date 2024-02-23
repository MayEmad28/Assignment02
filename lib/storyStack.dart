import 'package:flutter/material.dart';

class storyStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/facebookStory.jpg',fit: BoxFit.fill,)),
          Positioned.fill(child:Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius:13,
                  child: Icon(
                      Icons.person,size: 15,)))),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('Owner',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))),
        ],
      ),
    );
  }
}