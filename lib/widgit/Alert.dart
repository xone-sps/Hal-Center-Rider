import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget diaLogButton = ButtonBar(
    children: <Widget>[
      FlatButton(
        child: Text('ເບີ່ງລາຍລະອຽດ'),
        onPressed: () {},
      ),
      FlatButton(
        child: Text('ຍົກເລີກ'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )
    ],
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ເລືອກການດຳເນີນການ"),
    content: Text(
        "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
    elevation: 9,
    actions: [diaLogButton],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
