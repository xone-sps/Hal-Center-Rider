import 'package:delivery_app/shared/colors.dart';
import 'package:delivery_app/widgit/OrderListWidget.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/model/order_model.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: Container(
//                height: 650,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: orders.length,
                itemBuilder: (BuildContext context, int index) {
                  return OrderListWidget(
                    newOrder: orders[index],
                  );
                }),
          ),
        )
      ],
    ));
  }
}
