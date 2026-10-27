
import 'package:flutter/material.dart';
import 'models.dart';

class Comida extends StatelessWidget{
  final List<ProjectModel> comida = [
      
     ProjectModel( 
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZVk705c4M6WiXOqKzrQRMDNnSfjbcMnl8qZM1Zi63wA&s=10',
      spName: 'Paella',
      enName: 'Spanish Rice Dish',
    ),

    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfvMSlV01EsrAyX95jfnLG-03Kg7wE8hRpyDY0U0791Q&s=10',
      spName: 'Tortilla Española',
      enName: 'Spanish Omelette',
    ),
    
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbemUz8VVQW_FBEtZSlQ-7mcZq0bD_vqaL2KoN7XNxlQ&s=10',
      spName: 'Gazpacho',
      enName: 'Cold Tomato Soup',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnl1DJGQynxzU9_ogq_Yv45FLVYCO88OUM6G85QqUo3w&s=10',
      spName: 'Churros',
      enName: 'Fried Dough Pastry',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYF4EgowTIcKQewrAGBtXBQ_LqKg51N2ZVYjKk1rzrYw&s=10',
      spName: 'Patatas Bravas',
      enName: 'Spicy Fried Potatoes',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGWOpHhubWbD2TRYbulLp9mgkJ14owjXO0b30InOri2g&s=10',
      spName: 'Croquetas',
      enName: 'Spanish Croquettes',
    ),
     ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Comida'),
      ),
      body: ListView(
        children: [
          for (final comida in  this.comida)
            ComidaItem(comidas: comida),
        ],
      ),
    );
  }
}







class ComidaItem extends StatelessWidget{
 final ProjectModel comidas;

 const ComidaItem ({super.key, required this.comidas});
 @override
  Widget build(BuildContext context) {
   return Container(
    padding: EdgeInsets.all(8),
    color: Colors.green,
    child: Row(
      children: [
        
        Image.network(comidas.image, width: 64,height: 64,),
        SizedBox(width: 24,),
         Column(
          children: [
            Text(comidas.spName,),
             Text(comidas.enName,),
             
          ],
         ),
      ],
    ),
    
   );
  }
}
