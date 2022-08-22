// ignore_for_file: prefer_const_constructors, constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teleport_ar/constants/colors.dart';

// import 'package:flutter/line_icons.dart';

// import 'package:google_nav_bar/google_nav_bar.dart';

const IconData map_pin_ellipse = IconData(0xf706,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage);

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}



class _ProfilePageState extends State<ProfilePage> {
  Widget textfield({@required hintText, @required myIcon}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            icon: myIcon,
            iconColor: Colors.black,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              


              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textfield(
                      hintText: 'Settings',
                      myIcon: Icon(CupertinoIcons.settings_solid)
                    ),
                    textfield(
                      hintText: 'Visited Places',
                      myIcon: Icon(CupertinoIcons.location)

                    ),
                    textfield(
                      hintText: 'Bookings',
                      myIcon: Icon(CupertinoIcons.bookmark_solid)

                    ),
                    textfield(
                      hintText: 'Information',
                      myIcon: Icon(CupertinoIcons.info_circle)

                    ),
                    textfield(
                      hintText: 'Contact Us',
                      myIcon: Icon(CupertinoIcons.chat_bubble_2_fill)

                    ),


                    // Container(
                    //   height: 55,
                    //   width: double.infinity,
                    //   child: RaisedButton(
                    //     onPressed: () {},
                    //     color: Colors.black54,
                    //     child: Center(
                    //       child: Text(
                    //         "Update",
                    //         style: TextStyle(
                    //           fontSize: 23,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            // painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Palak Malhotra",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('profile.jpg'),
                  ),
                ),
              ),
            ],
          ),
          // Padding(
            // padding: EdgeInsets.only(bottom: 270, left: 184),
            // child: CircleAvatar(
            //   backgroundColor: Colors.black54,
            //   child: IconButton(
            //     icon: Icon(
            //       Icons.edit,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {},
            //   ),
            // ),
          // ),

          // Align(
          //   alignment: Alignment.bottomCenter,
            
          //   child: Container(
          //     height: 200,
          //     width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //         color: kGreenColor,
          //         borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
          //     ),
          //     child: Container(
          //         margin: EdgeInsets.only(top: 30, left: 40, right: 40),
          //         child: Column(
                    
          //         )),
          //   ),
          // ),
        ],
      ),
    );
  }
}

// class HeaderCurvedContainer extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Paint paint = Paint()..color = Color(0xff555555);
//     Path path = Path()
//       ..relativeLineTo(0, 150)
//       ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
//       ..relativeLineTo(0, -150)
//       ..close();
//     // canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }