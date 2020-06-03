import 'package:delivery_app/widgit/OrderHistoryListWidget.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/model/order_model.dart';

class OrderHistory extends StatelessWidget {
//  final String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('History order'),
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
//                height: 650,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: orders.length,
                    itemBuilder: (BuildContext context, int index) {
                      return OrderHistoryItem(orderHistory: orders[index]);
                    }),
              ),
            )
          ],
        ));
  }
}
