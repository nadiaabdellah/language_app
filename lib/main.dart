import 'homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(HolaApp());
}

class HolaApp extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
          home: HomePage(),
     );
   }
  }



