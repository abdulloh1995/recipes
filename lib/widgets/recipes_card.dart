import 'package:flutter/material.dart';
import 'package:recipes/models/recipes.dart';


Widget recipeCard(Recipes recipes) {
  return Card(
    child: Column(
      children: [
        Image.network('https://media-cldnry.s-nbcnews.com/image/upload/newscms/2016_24/1130681/tomato-sauce-stock-today-160617-tease.jpg'),
        Text(recipes.label,
        style: const TextStyle(fontSize: 20),)
      ],
    ),
  );
}