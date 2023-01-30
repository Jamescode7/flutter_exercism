import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UseFutureBuilder extends StatelessWidget {
  const UseFutureBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List> getTodos() async {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/todos');
      //print(response.data);
      var list = response.data as List;
      return list;
    }

    return Scaffold(
      appBar: AppBar(title: Text('Use Future Builder')),
      body: Center(
        child: FutureBuilder<List>(
          future: getTodos(),
          builder: (
            BuildContext context,
            AsyncSnapshot<List> snapshot,
          ) {
            if (snapshot.hasData == null) {
              return Container(child: Text('Data is null'));
            }

            print(snapshot.data);

            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) {
                final data = snapshot.data![index];

                return Container(
                  // child: Text('hello'),
                  child: Text(data['title']),
                );
              },
              separatorBuilder: (_, index) {
                return SizedBox(height: 16.0);
              },
            );
          },
        ),
      ),
    );
  }
}
