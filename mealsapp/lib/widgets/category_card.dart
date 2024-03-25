import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryCard({Key? key, required this.category, required this.onTap})
      : super(key: key);

  // Dışarıdan alınan kategori modeli rengi ve ismi ile bu kartta kullanılmalı.
  // onTap aksiyonu, dışardan aldığı fonksiyonu haberdar etmeli.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: category.color, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(16.0),
        child: Text(category.name),
      ),
    );
  }
}
