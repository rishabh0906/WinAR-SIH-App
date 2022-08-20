// ignore_for_file: prefer_const_constructors, constant_identifier_names, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teleport_ar/Models/Destination.dart';
import 'package:teleport_ar/Destinationpage.dart';


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

  final int _itemLength = 10;
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text("Choose City", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 110,
              // color: Colors.red,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: _itemLength + 2,
                itemBuilder: (context, index){
                  if(index == 0){
                    return SizedBox(width: 0,);
                  }
                  if(index == _itemLength + 1){
                    return SizedBox(width: 0,);
                  }
                  return Container(
                    padding: EdgeInsets.all(4),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.orange)
                    ),
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16)
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Text("Kochi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
                    ),
                  );

                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 12,);
                },
              ),
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
            Container(
              height: 400,
              child: PageView.builder(
                  itemCount: destinations.length,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (context, i) {
                    return Transform.scale(
                      scale: i == _index ? 1.0 : 0.8,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DestinationScreen(
                                    destination: destinations[i],
                                  )));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(destinations[i].image),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(2, 3),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        )

    );
  }
}


