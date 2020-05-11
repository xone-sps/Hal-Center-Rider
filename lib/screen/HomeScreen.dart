import 'package:delivery_app/widgit/OrderListWidget.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/widgit/OrderListWidget.dart';
import 'package:delivery_app/model/Order.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  final List<Order> _orders = orders;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
//            Container(
//              height: 100,
//              child: ListView(
//                scrollDirection: Axis.vertical,
//                children: <Widget>[
//                  Text('Hello')
//                ],
//              ),
//            )

            Expanded(
              child: Container(
//                height: 650,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _orders.length,
                    itemBuilder: (BuildContext context, int index){
                      return
                        InkWell(
                          onTap: (){},
                          child: OrderListWidget(
                            name: _orders[index].name,
                            image: _orders[index].image,
                            address: _orders[index].address,
                          ),
                        );
                    }
                ),
              ),
            )
//         ListTile(
//           leading: Icon(Icons.fastfood),
//           title: Text('New Order near by you'),
//           subtitle: Text('Order date 22/5/2020'),
//         ),
//            Row(
//              children: <Widget>[
//                Card(
//                  child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Column(
//                      children: <Widget>[
//                        Text('Menu name')
//                      ],
//                    ),
//                  ),
//                )
//              ],
//            )

      ],
    )
    );
  }
}