
import 'package:flutter/material.dart';
import 'models.dart';


class NumberPage extends StatelessWidget {
  NumberPage({super.key});

  final List<ProjectModel> number = [
      
     ProjectModel(
      image: 'assets/images.dart/1.png',
      spName: 'Uno',
      enName: 'one',
    ),

    ProjectModel(
      
      image: 'assets/images.dart/2.png',
      spName: 'Dos',
      enName: 'two',
    ),
    ProjectModel(
      
      image: 'assets/images.dart/3.png',
      spName: 'Tres',
      enName: 'three',
    ),
    ProjectModel(
      
      image: 'assets/images.dart/4.png',
      spName: 'Cuatro',
      enName: 'four',
    ),
    ProjectModel(
      
      image: 'assets/images.dart/6.png',
      spName: 'Seis',
      enName: 'six',
    ),
    ProjectModel(
      
      image: 'assets/images.dart/7.png',
      spName: 'Siete',
      enName: 'seven',
    ),
    ProjectModel(
      
      image: 'assets/images.dart/8.png',
      spName: 'Ocho',
      enName: 'eight',
    ),
    ProjectModel(
      
      image: 'assets/images.dart/9.png',
      spName: 'Nueve',
      enName: 'nine',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: const Text('Números'),
      ),
      body: ListView(
        children: [
          for (final number in this.number)
           NumberItem (numbers: number),
        ],
      ),
    );
  }
}



class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.numbers});

  final ProjectModel numbers;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lime,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset(numbers.image, width: 68, height: 68),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(numbers.spName),
              Text(numbers.enName),
             
            ],
          ),
        ],
      ),
    );
  }
}















class Category extends StatelessWidget{
   Category ({this.text, this.color, this.onTap});
    String? text;
     Color? color;
     Function()? onTap;
      @override
      Widget build(BuildContext context) {
         return GestureDetector(
           onTap: onTap,
           child: Container(
            padding:EdgeInsets.only(left: 18),
             color: color,
             height: 65,
             width: double.infinity,
             child: Row(
               children: [
             Text(text!, style: TextStyle(fontSize: 18, color: Colors.white)),
           ],
             ),
           ),
         );
    
  }
}



