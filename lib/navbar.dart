// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
                unselectedItemColor: Colors.grey,

                backgroundColor: Color.fromRGBO(249, 140, 7, 1),

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
        // bottomNavigationBar: SnakeNavigationBar.color(
        //   behaviour: SnakeBarBehaviour.floating,
        //   snakeShape: SnakeShape.circle,
        //   elevation: 10,
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        //
        //   ///configuration for SnakeNavigationBar.color
        //   snakeViewColor: Colors.white,
        //   selectedItemColor:  Color.fromRGBO(32, 14, 50, 1),
        //   unselectedItemColor: Colors.grey,
        //
        //   backgroundColor: Color.fromRGBO(249, 140, 7, 1),
        //
        //   currentIndex: _selectedIndex,
        //   onTap: (index) => setState(() {
        //     _selectedIndex = index;
        //     tabController!.animateTo(index);
        //   }),
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled_solid), label: 'tickets'),
        //     BottomNavigationBarItem(icon: Icon(CupertinoIcons.airplane), label: 'calendar'),
        //     BottomNavigationBarItem(icon: Icon(CupertinoIcons.location_solid), label: 'home'),
        //     BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_alt), label: 'microphone')
        //   ],
        // ),
        // bottomNavigationBar: Container(
        //   decoration: BoxDecoration(
        //       color: Colors.blue.shade100,
        //       borderRadius: BorderRadius.only(
        //         topLeft: const Radius.circular(10),
        //         topRight: const Radius.circular(10),
        //       )),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
        //     child: GNav(
        //       backgroundColor: Colors.blue.shade100,
        //       color: Colors.grey.shade600,
        //       activeColor: Colors.blue.shade900,
        //       tabBackgroundColor: Colors.blue.shade200,
        //       padding: EdgeInsets.all(16),
        //       gap: 8,
        //       selectedIndex: _selectedIndex,
        //       onTabChange: (index) {
        //         setState(() {
        //           _selectedIndex = index;
        //         });
        //       },
        //       tabs: const [
        //         GButton(
        //           icon: Icons.home,
        //           text: "Home",
        //         ),
        //         GButton(
        //           icon: map_pin_ellipse,
        //           text: "Location",
        //         ),
        //         GButton(
        //           icon: Icons.hotel,
        //           text: "Hotels & Food",
        //         ),
        //         GButton(
        //           icon: Icons.person,
        //           text: "Profile",
        //         ),
        //       ],
        //     ),
        //   ),
        // )
    );
  }
}
