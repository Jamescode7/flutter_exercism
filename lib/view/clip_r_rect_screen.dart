import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(152.0),
              child: Container(
                color: Colors.yellow,
                width: 300,
                height: 300,
                child: Center(child: Text('Contents')),
              )

            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(52.0),
                child: Container(
                  color: Colors.blue,
                  width: 300,
                  height: 300,
                  child: Center(child: Text('Contents')),
                )

            ),
          ],
        ),
      ),
    );
  }
}
