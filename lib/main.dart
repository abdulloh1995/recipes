import 'package:flutter/material.dart';
import 'package:recipes/models/recipes.dart';
import 'package:recipes/screens/second_screens.dart';
import 'package:recipes/widgets/recipes_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'Orbitron'),
      home: SecondPage(),
    );
  }
}

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe App",
          style: TextStyle(fontSize: 30) ,),
      ),
      body: ListView.builder(
          itemCount: Recipes.recipes.length,
          itemBuilder: (BuildContext context, int index) {
            return recipeCard(Recipes.recipes[index]);
          }),
    );
  }
}


