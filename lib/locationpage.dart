// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'dart:developer';

import 'package:device_apps/device_apps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teleport_ar/constants/colors.dart';


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
  static const platform = MethodChannel('samples.flutter.dev/ar');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/tajMahal.png",
                // "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: 200,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CupertinoButton(
                color: Colors.white.withOpacity(0.8),
                  child: Text("Let's Get Started", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                  onPressed: (){
                    // openArPortal();
                    openArDetection();
                  }),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
              ),
              child: Container(
                  margin: EdgeInsets.only(top: 30, left: 40, right: 40),
                  child: Column(
                    children: [
                      Text("Your Travel has just begun", textAlign: TextAlign.center , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      SizedBox(height: 10,),
                      Text("Open AR application Falana Dimkana jobsdfmn sdujfbsdfsbdsf sd fsdjiofbsdm fsdbfjs ", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: Colors.grey),)
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  void openArPortal() async{
    try {
      List<Application> apps = await DeviceApps.getInstalledApplications();
      log("$apps");
      DeviceApps.openApp('com.jacob.windmill');

    } on PlatformException catch (e) {
      log("Platform error while opening AR portal");
    }
  }

  void openArDetection() async{
    final int result = await platform.invokeMethod('openDetectionAcitvity');
  }
}
