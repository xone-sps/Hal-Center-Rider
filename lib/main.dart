import 'package:delivery_app/screen/HomeScreen.dart';
import 'package:delivery_app/screen/Profile.dart';
import 'package:delivery_app/screen/order_history.dart';
import 'package:delivery_app/shared/colors.dart';
import 'package:delivery_app/widgit/AppBar.dart';
import 'package:delivery_app/widgit/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
//          primaryColor: Colors.white,
//          primaryColorDark: Colors.white,
//          backgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages;
  Widget currentPage;
  int currentTabIndex = 0;
  HomeScreen homeScreen;
  Profile profileScreen;
  OrderHistory orderHistory;

  @override
  void initState() {
    super.initState();
    homeScreen = HomeScreen();
    profileScreen = Profile();
    orderHistory = OrderHistory();
    pages = [homeScreen, orderHistory, profileScreen];
    currentPage = homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: currentTabIndex == 0 ? appBarWidget() : null,
        body: currentPage,
        bottomNavigationBar: BottomBarWidget(),
      ),
    );
  }

  Widget BottomBarWidget() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.fastfood,
            size: 18,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text('New Orders',
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.history,
            size: 18,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text('Old Orders',
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.userCircle,
            size: 18,
          ),
          title: Padding(

            padding: const EdgeInsets.only(top: 4.0),
            child:
                Text('Profile', style: TextStyle(fontWeight: FontWeight.w400)),
          ),
        ),
      ],
      currentIndex: currentTabIndex,
      selectedItemColor: primaryColor,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      backgroundColor: whiteColor,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
          currentPage = pages[index];
        });
      },
    );
  }
}
