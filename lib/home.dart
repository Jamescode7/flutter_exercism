import 'package:flutter/material.dart';
import 'package:flutter_exercism/model/use_enum.dart';
import 'package:flutter_exercism/view/appbar_bottom_navi_screen.dart';
import 'package:flutter_exercism/model/base64_encoding_screen.dart';
import 'package:flutter_exercism/model/secure_storage_screen.dart';
import 'package:flutter_exercism/view/clip_r_rect_screen.dart';
import 'package:flutter_exercism/view/use_future_builder.dart';

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
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => AppBarBottomNaviScreen(),)
              );
            },
            child: Text('Appbar & BotoomNavi'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => ClipRRectScreen(),)
              );
            },
            child: Text('clipRRect Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => UseFutureBuilder(),)
              );
            },
            child: Text('Use Future Builder'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => UseEnum(),)
              );
            },
            child: Text('Use enum'),
          ),
        ],
      )),
    );
  }
}
