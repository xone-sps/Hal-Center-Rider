import 'package:delivery_app/screen/Sign_In.dart';
import 'package:delivery_app/screen/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:delivery_app/shared/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
//  const FoodDetail({ Key key, this.food }) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {
  bool turnAppNotification = false;
  bool turnOnTracking = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: whiteColor));
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(0, 4.0),
                              color: Colors.black12)
                        ],
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/empty_wish_list.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Xone Sengphosy",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "020 52202014",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: () {
//                          Navigator.of(context).push(MaterialPageRoute(
//                              builder: (BuildContext context) =>
//                                  EditProfile()));
                        },
                        child: Container(
                          width: 60.0,
                          height: 25.0,
                          child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Edit",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: primaryColor,
                                ),
                              ),
                              Icon(Icons.navigate_next,
                                  size: 18, color: primaryColor)
                            ],
                          )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Dashboard",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(
                            Icons.history,
                            color: primaryColor,
                          ),
                          title: Text('My order'),
                          subtitle: Text('Recieved 300 orders'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.payment, color: primaryColor),
                        title: Text('Payment'),
                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Payment()));
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.timer,
                          color: primaryColor,
                        ),
                        title: Text('On the way'),
                        trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                  child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.cake, color: primaryColor),
                          title: Text('Birthday 22/06/1995'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.pregnant_woman, color: primaryColor),
                          title: Text('Female'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.email, color: primaryColor),
                          title: Text('Email'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading: Icon(Icons.lock, color: primaryColor),
                          title: Text('Change Password'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                        ),
                        ListTile(
                          leading: FaIcon(FontAwesomeIcons.signInAlt,
                              color: primaryColor),
                          title: Text('Sign up'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 18),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignInPage()));
                          },
                        ),
                      ]))),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Notification ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Location tracking",
                            style:
                                TextStyle(fontSize: 16.0, fontFamily: 'Roboto'),
                          ),
                          Switch(
                            activeColor: primaryColor,
                            value: turnOnTracking,
                            onChanged: (bool value) {
                              setState(() {
                                turnOnTracking = true;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
