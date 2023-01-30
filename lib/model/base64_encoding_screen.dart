import 'dart:convert';

import 'package:flutter/material.dart';

class Base64EncodingScreen extends StatelessWidget {
  const Base64EncodingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Base64EncodingScreen')),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String id = 'email@email.com';
                  String pw = 'pw1234';
                  String rawString = '$id:$pw';

                  Codec<String, String> stringToBase64 = utf8.fuse(base64);
                  String result = stringToBase64.encode(rawString);

                  print(result);
                  //ZW1haWxAZW1haWwuY29tOnB3MTIzNA==
                  //go check https://www.base64decode.org/

                },
                child: Text('base64 Encoding'),
              )
            ],
          )),
    );
  }
}
