import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageScreen extends StatelessWidget {
  const SecureStorageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Flutter Secure Storage')),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final storage = FlutterSecureStorage();
                  final refreshToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6InRlc3RAY29kZWZhY3RvcnkuYWkiLCJzdWIiOiJmNTViMzJkMi00ZDY4LTRjMWUtYTNjYS1kYTlkN2QwZDkyZTUiLCJ0eXBlIjoicmVmcmVzaCIsImlhdCI6MTY3NTAwMDQyNSwiZXhwIjoxNjc1MDg2ODI1fQ.7SSnfU06k4Ew8lJjzPp99JLZh6iOaUm-rHZPYXfZVbE';
                  await storage.write(key: 'KEY_001', value: 'test value 001');
                  await storage.write(key: 'REFRESH_TOKEN_KEY', value: refreshToken);

                  print('saved!');
                },
                child: Text('save storage'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final storage = FlutterSecureStorage();
                  final value1 = await storage.read( key: 'KEY_001');
                  print(value1);

                  final refreshToken = await storage.read(key: 'REFRESH_TOKEN_KEY');
                  print('refreshToken : $refreshToken');
                },
                child: Text('load storage'),
              ),
            ],
          )),
    );
  }
}
