import 'package:delivery_app/model/store_model.dart';
import 'package:delivery_app/widgit/StoreListWidget.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Store'),
        elevation: 0,
      ),
//        body: SingleChildScrollView(
//          child: Container(
//            child: Column(
//              children: <Widget>[
//                    Container(
//                        height: 200,
//                        padding: EdgeInsets.only(left: 10,right: 10),
//                        color: primaryColor,
//                        child: Row(
//                          children: <Widget>[
//                            Text('Store page'),
//                          ],
//                        ),
//                      ), Container(
//                        height: 250,
//                        color: whiteColor,
//                        child: Row(
//                          children: <Widget>[
//                            Card(
//                            )
//                          ],
//                        ),
//                      ),
//                Container(
//                  height: 350,
//                  color: greenColor,
//                  padding: EdgeInsets.only(left: 10,right: 10),
//                  child: Row(
//                    children: <Widget>[
//                      Text('Product Page'),
//                    ],
//                  ),
//                )
//              ],
//            ),
//          ),
//        ),
    body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: stores.length,
        itemBuilder: (BuildContext context, int index) {
          return StoreListWidget(
            orderStore: stores[index],
          );
        }),
    );
  }
}
