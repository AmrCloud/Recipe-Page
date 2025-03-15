import 'package:flutter/material.dart';
import 'package:recipe_page/ingredient_container.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://img.freepik.com/premium-photo/penne-pasta-carbonara-cream-sauce-with-mushroom_1339-81372.jpg?w=2000',
            width: double.infinity,
            fit: BoxFit.cover, // Ensures the image covers the width
          ),
          Padding(
            padding: const EdgeInsets.all(16.0), // Add padding here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 12),
                Text(
                  'White sauce pasta is also called Bechamel sauce pasta. The Bechamel sauce is made from a white roux (butter and flour) and milk and is used as a base for many sauces. It is often considered one of the mother sauces of French cuisine.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                IngredientGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}