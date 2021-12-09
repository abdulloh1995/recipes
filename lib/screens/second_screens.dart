import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      // appBar: AppBar(title: const Text('Second page'),),
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(55),
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: const Text(
                  'Flutter',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue.withOpacity(0.90);
                            }
                            return Colors.black;
                          })),
                  onPressed: () {},
                  child: const Text(
                    'button',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              IconButton(
                iconSize: 40,
                onPressed: () {}, icon: const Icon(Icons.volume_up),)
            ],
          ),
        ),
      ),
    );
  }
}
