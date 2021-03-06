import 'dart:ui';
import 'package:delivery_app/shared/colors.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/model/order_model.dart';

import 'Alert.dart';

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({Key key, this.orderHistory}) : super( key: key );
  final Order orderHistory;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _orderCard(context),
    );
  }

  Widget _orderCard(BuildContext context) {
    return InkWell(
      onTap: () {
        showAlertDialog(context);
      },
      child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 80,
                width: 120,
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage, image: orderHistory.image),
              ),
              Container(
                margin: EdgeInsets.only(left: 12),
//            padding: EdgeInsets.only(left: 10,right: 20),
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      orderHistory.name,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.home, size: 16, color: primaryColor),
                        SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            orderHistory.address,
                            style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.refresh, size: 16, color: primaryColor),
                        SizedBox(width: 6),
                        Text(
                          orderHistory.status,
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(width: 6),
                        Text(orderHistory.date,
                            style: TextStyle(
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
