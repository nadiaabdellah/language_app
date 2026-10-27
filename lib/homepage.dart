import 'package:flutter/material.dart';
import 'package:languageapp/familia.dart';
import 'package:languageapp/number.dart';
import 'package:languageapp/comida.dart';
import 'package:languageapp/lugares.dart';

class HomePage extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromARGB(194, 230, 226, 229),
       appBar: AppBar(title: Text('Hola'), backgroundColor: Colors.brown),
        body: Column(
          children: [
            Category(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NumberPage(),
                ),
                );
            },
           text: 'Números',
             color:Colors.lime ,
            ),

            Category( onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Familia(),
                ),
                );
            },
              text: 'Familia',
             color:Colors.orange,
            ),
             Category(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>Comida(),
                ),
                );
             },
             text: 'Comida',
             color:Colors.green,
             
             ),
             

              Category(onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Lugares(),
                ),
                );
              },
              text: 'Lugares',
             color:Colors.purple,

              ),
          ],
        ),
     );
    
  }
  
 }
