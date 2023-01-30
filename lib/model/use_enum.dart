import 'dart:math';

import 'package:flutter/material.dart';

enum FRUIT {
  apple,
  banana,
  peach,
}

class UseEnum extends StatelessWidget {
  const UseEnum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FRUIT myFruit = FRUIT.apple;

    return Scaffold(
      appBar: AppBar(title: Text('Use ENUM')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                List<String> fruitList = ['apple', 'peach', 'banana'];
                String randomFruit = fruitList[Random().nextInt(fruitList.length)];
                print(randomFruit);

                final fruitType = FRUIT.values.firstWhere((e) => e.name == randomFruit);
                print('type : $fruitType');
              },
              child: Text('Check'),
            )
          ],
        ),
      ),
    );
  }
}
