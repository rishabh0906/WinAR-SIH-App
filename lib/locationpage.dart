// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const IconData map_pin_ellipse = IconData(0xf706,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage);

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);
  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  // final List<Widget> _pages = [Center()]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Location"),
        ),
        
    );
  }
}
