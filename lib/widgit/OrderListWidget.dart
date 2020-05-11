import 'package:flutter/material.dart';
import 'package:delivery_app/model/Order.dart';

class OrderListWidget extends StatelessWidget{
  final String name;
  final String date;
  final String address;
  final int price;
  final int amount;
  final String image;
  OrderListWidget({this.name, this.date, this.address, this.price,this.amount,this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
            children: <Widget>[
         Center(
           child: ListTile(
//           leading: Image.network(image),
           leading: Container(
             width: 80,
             height: 80,
             decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage(image),
                   fit: BoxFit.cover,
                 ),
                 borderRadius: BorderRadius.circular(6.0),),
           ),
             title: Text(name),
             subtitle: Text(address),
             contentPadding: EdgeInsets.only(top: 6,left: 8,right: 8,bottom: 6),
             trailing: Icon(Icons.arrow_forward_ios),
//            Card(
//              child: Column(
//                children: <Widget>[
//                  Text(name)
//                ],
//              ),
//            )
           ),
         ),

            ],
          ),
    );
  }
}