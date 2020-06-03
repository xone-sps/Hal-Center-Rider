import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget remindButton = FlatButton(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Text("ເບີ່ງລາຍລະອຽດ"),
    onPressed: () {},
  );
  Widget cancelButton = FlatButton(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Text("ຍົກເລີກ"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("ເລືອກການດຳເນີນການ"),
    content: Text(
        "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
    elevation: 9,
    actions: [
      Row(
        children: <Widget>[
          remindButton,
          SizedBox(width: 8),
          cancelButton,
        ],
      )
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
