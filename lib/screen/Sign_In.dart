import 'package:delivery_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _togleVisibility = true;
  String phoneString, passwordString;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primaryColor));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            "ເຂົ້າສູ່ລະບົບ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/hal_food.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: primaryColor,
                            blurRadius: 1.0,
                            offset: Offset(1.0, 1.0))
                      ]),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "HAL Rider",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'),
                ),
                Text(
                  "ພງຽແຕ່ຄິກ ຊີວິດກໍ່ປ່ຽນ",
                  style: TextStyle(fontSize: 14.0, fontFamily: 'Roboto'),
                ),
//            SizedBox(height: 10.0),
                Divider(color: primaryColor),
//            Card(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, right: 20.0, left: 20.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        PhoneTextFiled(),
                        SizedBox(height: 10.0),
                        PasswordTextFiled(),
                        SizedBox(height: 10.0),
                        SignInButton(),
                        Divider(color: primaryColor),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "ຍັງບໍມີບັນຊີ ?",
                              style: TextStyle(fontFamily: 'Roboto'),
                            ),
                            SizedBox(width: 10.0),
                            GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "ລົງທະບຽນ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                      fontSize: 16.0,
                                      fontFamily: 'Roboto'),
                                )),
                            SizedBox(
                              width: 40.0,
                            ),
                            GestureDetector(
                                onTap: () {
//                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
                                },
                                child: Text(
                                  "ລືມລະຫັດຜ່ານ ?",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: primaryColor,
                                      fontFamily: 'Roboto'),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
//            ),
              ],
            ),
          ),
        ),
//      bottomNavigationBar: SignInButton(),
    );
  }

  Widget PhoneTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'Roboto'),
      keyboardType: TextInputType.phone,
      autofocus: true,
      decoration: InputDecoration(
        labelText: 'ເບີໂທ',
        labelStyle: TextStyle(fontSize: 18.0, color: primaryColor),
        prefixIcon: Icon(Icons.phone, color: primaryColor),
        hintText: 'ເບີໂທ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: primaryColor),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'ກາລຸນາປ້ອນເບີໂທລະສັບ';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        phoneString = value.trim();
      },
    );
  }

  Widget PasswordTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'Roboto'),
      autofocus: false,
      obscureText: _togleVisibility,
      decoration: InputDecoration(
          labelStyle: TextStyle(fontSize: 18.0, color: primaryColor),
          labelText: 'ລະຫັດຜ່ານ',
          prefixIcon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          hintText: 'ລະຫັດຜ່ານ',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(color: primaryColor),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _togleVisibility = !_togleVisibility;
              });
            },
            icon: _togleVisibility
                ? Icon(
                    Icons.visibility_off,
                    color: primaryColor,
                  )
                : Icon(
                    Icons.visibility,
                    color: primaryColor,
                  ),
          )),
      validator: (String value) {
        if (value.length < 6) {
          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກ່ວາ 6 ໂຕ';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        passwordString = value.trim();
      },
    );
  }

  Widget SignInButton() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          onPressed: () {
            if (formkey.currentState.validate()) {
              formkey.currentState.save();
//            Navigator.of(context).push(
//                MaterialPageRoute(builder: (BuildContext context) => Delivery_Status()));
            }
          },
          padding: EdgeInsets.only(right: 12.0, left: 12, top: 16, bottom: 16),
          color: primaryColor,
          child: Text('ເຂົ້າສູ່ລະບົບ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
        ),
      ),
    );
  }
}
