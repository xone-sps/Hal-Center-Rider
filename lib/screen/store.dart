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
