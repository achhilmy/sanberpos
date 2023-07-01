import 'package:flutter/material.dart';

class StylingPage extends StatelessWidget {
  StylingPage({super.key});

  List data = [
    {"id": "1", "name": "achmad", "address": "kediri"},
    {"id": "2", "name": "hilmy", "address": "surabaya"},
    {"id": "3", "name": "firdaus", "address": "malang"},
    {"id": "4", "name": "firdaus", "address": "malang"},
    {"id": "5", "name": "firdaus", "address": "malang"},
    {"id": "6", "name": "firdaus", "address": "malang"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling flexbox'),
      ),
      body: GridView.builder(
          itemCount: data.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: Text(data[index]['name']),
            );
          }),
      //    body: Container(
      //   width: double.infinity,
      //   child: ListView.separated(
      //       separatorBuilder: (context, index) {
      //         return Divider();
      //       },
      //       itemCount: data.length,
      //       itemBuilder: (context, index) {
      //         return ListTile(
      //           leading: Icon(Icons.account_circle),
      //           title: Text(data[index]['name']),
      //           subtitle: Text(data[index]['address']),
      //           trailing: Icon(Icons.arrow_forward_ios),
      //         );
      //       }),
      // ),
    );
  }
}

class BoxContainer extends StatelessWidget {
  BoxContainer({super.key, this.height, this.width, this.colors});

  final double? height;
  final double? width;
  Color? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: colors,
    );
  }
}
