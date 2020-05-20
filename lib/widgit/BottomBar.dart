import 'package:delivery_app/screen/HomeScreen.dart';
import 'package:delivery_app/screen/Profile.dart';
import 'package:delivery_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  List<Widget> pages;
  Widget currentPage;

  int currentTabIndex = 0;
  HomeScreen homeScreen;
  Profile profileScreen;

  @override
  void initState() {
    super.initState();
    homeScreen = HomeScreen();
    profileScreen = Profile();
    pages = [
      homeScreen,
      profileScreen,
    ];
    currentPage = homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    int currentTabIndex = 0;
    void _onItemTapped(int index) {
      void initState() {
        super.initState();
        homeScreen = HomeScreen();
        profileScreen = Profile();
        pages = [
          homeScreen,
          profileScreen,
        ];
        currentPage = homeScreen;
      }
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(color: Color(0xFF545454)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.history),
          title: Text(
            'History',
            style: TextStyle(color: Color(0xFF545454)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.heart),
          title: Text(
            'Profile',
            style: TextStyle(color: Color(0xFF545454)),
          ),
        ),
      ],
      currentIndex: currentTabIndex,
      selectedItemColor: primaryColor,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
          currentPage = pages[index];
        });
      },
    );
  }
}
