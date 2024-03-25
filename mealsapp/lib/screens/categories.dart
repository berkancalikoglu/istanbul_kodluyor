import 'package:flutter/material.dart';
import 'package:mealsapp/data/category_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key});

  void _onCategoryTap(Category category) {
    print("${category.name} kategorisine tıklandı.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kategoriler")),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 5,
          childAspectRatio: 4 / 2,
        ),
        children: categories.map((category) {
          return CategoryCard(
            category: category,
            onTap: () => _onCategoryTap(category),
          );
        }).toList(),
      ),
    );
  }
}
