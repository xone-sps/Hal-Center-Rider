import 'dart:ui';
import 'package:delivery_app/screen/order_detail.dart';
import 'package:delivery_app/shared/colors.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/model/order_model.dart';

class OrderListWidget extends StatelessWidget {
  const OrderListWidget({Key key, this.newOrder}) : super(key: key);
  final Order newOrder;

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
                placeholder: kTransparentImage, image: newOrder.image),
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
                  newOrder.name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
                        newOrder.address,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
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
                    Icon(Icons.warning, size: 16, color: primaryColor),
                    SizedBox(width: 6),
                    Text(
                      newOrder.status,
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 6),
                    Text(newOrder.date,
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

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget diaLogButton = ButtonBar(
      children: <Widget>[
        FlatButton(
          child: Text('ຮັບສົ່ງ'),
          onPressed: () {},
        ),
        FlatButton(
          child: Text('ລາຍລະອຽດ'),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/order_detail');
          },
        ),
        FlatButton(
          child: Text('ຍົກເລີກ'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    Widget remindButton = FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text("ຮັບສົ່ງ"),
      onPressed: () {},
    );
    Widget cancelButton = FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text("ຍົກເລີກ"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget viewdeatailButton = FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text("ລາຍລະອຽດ"),
      onPressed: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => OrderDetail()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("ເລືອກການດຳເນີນການ"),
      content: Text(
          "ທ່ານຕ້ອງການຮັບສິນຄ້ານີ້ ຫຼື ບໍ່?"),
      elevation: 9,
      actions: [
        diaLogButton
//        Row(
//          children: <Widget>[
//            remindButton,
//            SizedBox(width: 8),
//            viewdeatailButton,
//            SizedBox(width: 8),
//            cancelButton,
//          ],
//        )
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
