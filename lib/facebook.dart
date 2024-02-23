import 'package:flutter/material.dart';
import 'facebookHome.dart';

class facebook extends StatelessWidget{
  static const String routeName='facebook';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.indigo,
       child: Container(
         margin: const EdgeInsets.all(30),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           //mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Spacer(),
             const Icon(Icons.facebook_outlined,color: Colors.white,size:75,),
             const TextField(
               decoration: InputDecoration(
                 hintStyle: TextStyle(color: Colors.grey),
                 hintText: 'Email or Phone',
                 enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
               ),
             ),
             const SizedBox(height: 15,),
             const TextField(
               decoration: InputDecoration(
                 hintStyle: TextStyle(color: Colors.grey),
                 hintText: 'Password',
                 enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))
               ),
             ),
             const SizedBox(height: 15,),
             ElevatedButton(onPressed: (){
               Navigator.pushNamedAndRemoveUntil(context, facebookHome.routeName,(route) => false,);
             },
                 style:ElevatedButton.styleFrom(backgroundColor:const Color(0x004e68a1) ),
                 child: const Text('Log IN',style: TextStyle(fontSize: 17),)),
             const Spacer(),
             TextButton(onPressed: (){}, child: const Text('Sign Up for Facebook',style: TextStyle(color: Colors.white,fontSize: 17),)),
             TextButton(onPressed: (){}, child: const Text('Forgot Password?',style: TextStyle(color: Colors.white,fontSize: 17),))
           ],
         ),
       ),
     ),
   );
  }
}