import 'package:flutter/cupertino.dart';
import 'package:foodapp/features/home/lists/productslist.dart' show productsfeed;

class Productwidget extends StatelessWidget {
  const Productwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
               child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  ),
                
                 itemCount: productsfeed.length,
                 itemBuilder: (context, index) {
                   
                 return productsfeed[index];
                 },
                 ),
             );
  }
}