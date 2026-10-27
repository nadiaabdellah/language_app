
import 'package:flutter/material.dart';
import 'models.dart';

class Lugares extends StatelessWidget{
 final List<ProjectModel> lugares = [
      
     ProjectModel( 
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYpvDpCmbmSRAC8es1QFvm1iFwpCGUflbT5ZHNGtChRA&s=10',
      spName: 'Madrid',
      enName: 'Madrid',
    ),

    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4KyDmT95LwsQfa1AWWCMHR9c22DD11aBxuUC1ZGE73Q&s=10',
      spName: 'Barcelona',
      enName: 'Barcelona',
    ),
    
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq7WO_DW8I8RFf8AmvEPf1S13yyCIBUY9EGMoHh_Okkg&s=10',
      spName: 'Sevilla',
      enName: 'Sevilla',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkXmY8FILAu9Rbgdsrd1T-zql-bI7YUI5FGSm1MixooQ&s=10',
      spName: 'Valencia',
      enName: 'Valencia',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTshniPpd7jhfImoC7zgVGJ7Cf26ab-fVcje_iWg8G9Hg&s=10',
      spName: 'Granada',
      enName: 'Granada',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQgNKhJ9SkfZ_bLlIpR3lQ2ZdPLqUebk4m0WI6Q3APg&s=10',
      spName: 'Málaga',
      enName: 'Malaga',
    ),
     ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: const Text('Lugares'),
      ),
      body: ListView(
        children: [
          for (final lugare in  this.lugares)
           LugaresItem(lugare: lugare),
        ],
      ),
    );
  }
}







class LugaresItem extends StatelessWidget{
 final ProjectModel lugare ;

 const LugaresItem ({super.key, required this.lugare });
 @override
  Widget build(BuildContext context) {
   return Container(
    padding: EdgeInsets.all(8),
    color: Colors.purple,
    child: Row(
      children: [
        
        Image.network(lugare.image, width: 64,height: 64,),
        SizedBox(width: 24,),
         Column(
          children: [
            Text(lugare.spName,),
             Text(lugare.enName,),
             
          ],
         ),
      ],
    ),
    
   );
  }
}
