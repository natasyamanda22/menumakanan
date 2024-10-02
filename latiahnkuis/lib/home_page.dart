import 'package:flutter/material.dart';
import 'package:latiahnkuis/dummy-menu.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: foodMenuList.length,
          itemBuilder: (context, index) {
            final FoodMenu menu =
                foodMenuList[index]; //nanti dia ngelooping datanya
            return Card(
              child: Column(
                children: [
                  Text(menu.name),
                  Text(menu.category),
                  Text(menu.description),
                  Text(menu.ingredients),
                  Text(menu.cookingTime),
                  Text(menu.price),
                  Text(menu.imageAsset),
                  Image.network(menu.imageUrls[0])
                ],
              ),
            );
          }),
    );
  }
}
