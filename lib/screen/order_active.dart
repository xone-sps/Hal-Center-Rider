import 'package:flutter/material.dart';

class OrderActive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//          Center(child: Text('ບໍ່ມີສິນຄ້າທີ່ກຳລັງສົ່ງ')),
        Container(
            child: Image.network('https://hal-logistics.la/images/news/1c463941799700d8c087018885c35013_uploaded.png')),
        ],
      ),
    );
  }
}
