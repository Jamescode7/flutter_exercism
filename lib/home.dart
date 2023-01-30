import 'package:flutter/material.dart';
import 'package:flutter_exercism/base64_encoding_screen.dart';
import 'package:flutter_exercism/secure_storage_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('exercism')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('exercism'),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Base64EncodingScreen(),)
              );
            },
            child: Text('base64 Encoding'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SecureStorageScreen(),)
              );
            },
            child: Text('secure_storage'),
          )
        ],
      )),
    );
  }
}
