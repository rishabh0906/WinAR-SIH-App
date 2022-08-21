// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:teleport_ar/constants/colors.dart';
import 'package:teleport_ar/profile.dart';
import 'homepage.dart';
import 'locationpage.dart';
import 'hotels_foodpage.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';


const IconData map_pin_ellipse = IconData(0xf706,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage);

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {

  final _pageController = PageController();

  TabController? tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: _selectedIndex, length: 4, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                ),
              ),
            ),
            Center(
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                children: const [
                  HomePage(),
                  LocationPage(),
                  HotelsPage(),
                  ProfilePage(),

                ]
              )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: SnakeNavigationBar.color(
                behaviour: SnakeBarBehaviour.floating,
                snakeShape: SnakeShape.circle,
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),

                ///configuration for SnakeNavigationBar.color
                snakeViewColor: Colors.white,
                selectedItemColor:  Color.fromRGBO(32, 14, 50, 1),
                unselectedItemColor: Colors.grey.withOpacity(0.5),

                backgroundColor: getBottomNavColor(_selectedIndex),

                currentIndex: _selectedIndex,
                onTap: (index) => setState(() {
                  _selectedIndex = index;
                  tabController!.animateTo(index);
                }),
                items: const [
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled_solid), label: 'tickets'),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.airplane), label: 'calendar'),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.location_solid), label: 'home'),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_alt), label: 'microphone')
                ],
              ),
            )
          ],
        ),
    );
  }

  Color getBottomNavColor(int index){
    switch(index){
      case 0: {
        return kOrangeColor;
      }
      case 1: {
        return kWhiteColor;
      }
      case 2: {
        return kBlueColor;
      }
      case 3: {
        return kGreenColor;
      }
      default: {
        return kOrangeColor;
      }
    }
  }
}
