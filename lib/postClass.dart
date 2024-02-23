import 'package:flutter/material.dart';

class postClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Icon, Column(Name,Time)
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.person,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Owner',style: TextStyle(fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Text('  3h '),
                        Icon(Icons.public,size: 15,)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          //my post
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('My Post',style: TextStyle(fontSize: 25),),),
          //likes and comments
          Row(
            children: [
              Text('100   '),
              Image.asset('assets/images/like.jpg',height: 50,width: 50,),
              Spacer(),
              Text('100 Comments')
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(child: Image.asset('assets/images/singleLike.jpg',height: 20,width: 10,)),
                Expanded(child: Text('Like',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey))),
                Expanded(child: Image.asset('assets/images/comment.jpg',height: 20,width: 10,)),
                Expanded(child: Text('Comment',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey),)),
                Expanded(child: Image.asset('assets/images/share.png',height: 20,width: 10,)),
                Expanded(child: Text('Share',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.grey))),

              ],

            ),
          ),
        ],
      ),
    );
  }
}