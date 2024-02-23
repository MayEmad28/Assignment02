import 'package:Assignment02/facebookHome.dart';
import 'package:Assignment02/routeApp.dart';
import 'package:flutter/material.dart';

import 'facebook.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute: facebook.routeName,
     routes:{
       facebook.routeName:(context)=>facebook(),
       facebookHome.routeName:(context)=>facebookHome(),
       routeApp.routeName:(context)=>routeApp(),
     } ,
   );
  }
}