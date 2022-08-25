// ignore_for_file: prefer_const_constructors, constant_identifier_names, prefer_const_literals_to_create_immutables
import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleport_ar/Models/Destination.dart';
import 'package:teleport_ar/Destinationpage.dart';
import 'package:teleport_ar/Models/destination_details_model.dart';
import 'package:teleport_ar/Models/home_page_top_destination_model.dart';
import 'package:teleport_ar/constants/colors.dart';
import 'package:teleport_ar/constants/list_files.dart';


// import 'package:google_nav_bar/google_nav_bar.dart';

const IconData map_pin_ellipse = IconData(0xf706,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _index = 1;
  late int _selectedTopDestinationId;
  late List<DestinationDetailsModel> _listOfDestination;
  bool _isLoading = false;
  late PageController _pageController;


  @override
  void initState() {
    super.initState();
    _selectedTopDestinationId = listOfTopDestination.first.id!;
    _listOfDestination = listOfDelhiPlaces;
    _pageController = PageController(viewportFraction: 0.7, initialPage: _index);

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text("Choose City", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 110,
              // color: Colors.red,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 12,),
                  ...List.generate(listOfTopDestination.length, (index) {
                    final item = listOfTopDestination[index];
                    return GestureDetector(
                      onTap: (){
                        onCityChosen(item.id!);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 12),
                        padding: EdgeInsets.all(4),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: item.id == _selectedTopDestinationId ? Border.all(color: kOrangeColor, width: 3) : null
                        ),
                        child: Container(
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("${item.imagePath}"),
                                  fit: BoxFit.cover
                              )
                          ),

                          // alignment: Alignment.bottomLeft,
                          // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: const [0.7, 0.9],
                                      colors: [Colors.white.withOpacity(0.1), Colors.black.withOpacity(0.5)]
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(bottom: 10, left: 6),
                                  alignment: Alignment.bottomLeft,
                                  child: Text("${item.destinationName}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),)),
                            ],
                          ),
                          // child: Image.asset("${item.imagePath}", fit: BoxFit.fill,)
                        ),
                      ),
                    );
                  }),
                ],
              )
            ),

            SizedBox(height: 12,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Monument or place ...",
                            hintStyle: TextStyle(color: Colors.orange),
                            prefixIcon: Icon(Icons.search, color: Colors.orange,)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal:20,vertical: 20),

                    decoration: BoxDecoration(
                        color: Colors.orange.shade50,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Icon(Icons.filter_alt_outlined, color: Colors.orange,),
                  )
                ],
              ),
            ),
            if(_isLoading)
              Column(
                children: [
                  SizedBox(height: 16,),
                  Center(
                    child: CircularProgressIndicator(
                      color: kOrangeColor,
                    ),
                  ),
                ],
              ),

            if(!_isLoading)
            CarouselSlider(
              options: CarouselOptions(
                  height: 430.0,
                viewportFraction: 0.8,
                // aspectRatio: 2.0,
                initialPage: 2,
                enlargeCenterPage: true,
                onPageChanged: (int index, reason) => setState(() => _index = index),
              ),
              items: _listOfDestination.map((destination) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DestinationScreen(
                              destination: destination,
                            )));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PhysicalModel(
                              color: Colors.black,
                              elevation: 0,
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 350,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("${destination.image}"),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 3,
                                        blurRadius: 2,
                                        offset: Offset(3, 4),
                                      )
                                    ]
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 50,)

            // if(!_isLoading)
            // Container(
            //   height: 400,
            //   child: PageView.builder(
            //       itemCount: _listOfDestination.length,
            //       controller: _pageController,
            //       physics: BouncingScrollPhysics(),
            //       onPageChanged: (int index) => setState(() => _index = index),
            //       itemBuilder: (context, i) {
            //         return Transform.scale(
            //           scale: i == _index ? 1.0 : 0.8,
            //           child: GestureDetector(
            //             onTap: () {
            //               Navigator.of(context).push(MaterialPageRoute(
            //                   builder: (context) => DestinationScreen(
            //                         destination: _listOfDestination[i],
            //                       )));
            //             },
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   height: 350,
            //                   decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(30),
            //                       image: DecorationImage(
            //                         fit: BoxFit.fill,
            //                         image: AssetImage("${_listOfDestination[i].image}"),
            //                       ),
            //                       boxShadow: [
            //                         BoxShadow(
            //                           color: Colors.black.withOpacity(0.3),
            //                           spreadRadius: 2,
            //                           blurRadius: 2,
            //                           offset: Offset(2, 3),
            //                         )
            //                       ]),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         );
            //       }),
            // )
          ],
        )

    );
  }

  void onCityChosen(int itemId) async{
    setState(() {
      _isLoading = true;
      _selectedTopDestinationId = itemId;
    });

      await Future.delayed(Duration(milliseconds: 700));

    setState(() {
      _listOfDestination = getList(itemId);
      _index = 1;
      _isLoading = false;

    });

  }

  List<DestinationDetailsModel> getList(int itemId) {
    switch (itemId) {
      case PlaceId.delhiId: {
        return listOfDelhiPlaces;
      }
      case PlaceId.gujaratId: {
        return listOfGujaratPlaces;
      }
      case PlaceId.mumbaiId: {
        return listOfMumbaiPlaces;
      }
      case PlaceId.westBengalId: {
        return listOfWestBengalPlaces;
      }
      default: {
        return listOfDelhiPlaces;
      }
    }
  }
}


