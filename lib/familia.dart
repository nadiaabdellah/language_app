
import 'package:flutter/material.dart';
import 'package:languageapp/models.dart';
import 'models.dart';


class Familia extends StatelessWidget{
  
      
     final List<ProjectModel> familias = [
      
     ProjectModel( 
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPJgcSsAxTuDlhcGW8h0QZUjA7uaLnzOp_i6NHY9YRg&s=10',
      spName: 'Padre',
      enName: 'Father',
    ),

    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSycNYwQDs3pla1g38oXuM8Mz4P0E_KqT4m1hko-pnlA&s=10',
      spName: 'Hijo',
      enName: 'Son',
    ),
    
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR70kF8tm3-dD8XANkqmHVQP8sVwqlUg96n1KyxJ2IymA&s=10',
      spName: 'Hermana',
      enName: 'Daughter',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBoCve5UfB8BZ4qb0sIHSAVFCfqyigR8JTDS9Ne62Zlg&s=10',
      spName: 'Madre',
      enName: 'Mother',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSXySs2EKWt_Axc3DMj9pW59tyTMZw7-SkIAmmxiqw2A&s=10',
      spName: 'Abuelo',
      enName: 'Grandfather',
    ),
    ProjectModel(
      
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShG2F9V-EZc0d_YKGo5Ebr_TUYesMK1sMyConIwYB5Mg&s=10',
      spName: 'Abuela',
      enName: 'Grandmother',
    ),
     ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: const Text('Familia'),
      ),
      body: ListView(
        children: [
          for (final familia in  this.familias)
            FaimilaItem(familia: familia),
        ],
      ),
    );
  }
}







class FaimilaItem extends StatelessWidget{
 final ProjectModel familia;

 const FaimilaItem ({super.key, required this.familia });
 @override
  Widget build(BuildContext context) {
   return Container(
    padding: EdgeInsets.all(8),
    color: Colors.orange,
    child: Row(
      children: [
        
        Image.network(familia.image, width: 64,height: 64,),
        SizedBox(width: 24,),
         Column(
          children: [
            Text(familia.spName,),
             Text(familia.enName,),
             
          ],
         ),
      ],
    ),
    
   );
  }
}
