import 'package:flutter/material.dart';

class IngredientContainer extends StatelessWidget {
  final String imagePath;
  const IngredientContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border:
            Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
      ),
      child: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}

class IngredientGrid extends StatelessWidget {
  const IngredientGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: gridList.length,
      itemBuilder: (context, index) {
        return gridList[index];
      },
    );
  }
}

List<IngredientContainer> gridList = [
  IngredientContainer(imagePath: 'assets/pasta.png'),
  IngredientContainer(imagePath: 'assets/pasta.png'),
  IngredientContainer(imagePath: 'assets/butter.png'),
  IngredientContainer(imagePath: 'assets/butter.png'),
  IngredientContainer(imagePath: 'assets/garlic.png'),
  IngredientContainer(imagePath: 'assets/garlic.png'),
  IngredientContainer(imagePath: 'assets/chicken.png'),
  IngredientContainer(imagePath: 'assets/chicken.png'),
];
