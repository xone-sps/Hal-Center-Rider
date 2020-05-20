import 'package:delivery_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            PaymeList(),
            Divider(height: 4),
            PaymeList(),
            Divider(height: 4),
            PaymeList(),
            Divider(height: 4)
          ],
        ),
      ),
    );
  }
  Widget PaymeList() {
    return ListTile(
        leading: Icon(Icons.payment),
        title: Text('20000 kip'),
        subtitle: Text('#00001 - 10:00 20-5-2020'),
        onTap: (){},
      );
  }
}
