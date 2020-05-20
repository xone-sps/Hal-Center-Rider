import 'package:flutter/material.dart';

Widget appBarWidget() {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    title: Text(
      'HAL Center Delivery',
      style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),
    ),
  );
}
