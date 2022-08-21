// ignore_for_file: prefer_const_constructors, constant_identifier_names, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleport_ar/Models/Destination.dart';
import 'package:teleport_ar/Destinationpage.dart';
import 'package:teleport_ar/Models/home_page_top_destination_model.dart';
import 'package:teleport_ar/constants/colors.dart';


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
  late int _selectedTopDestinationId;

   final List<HomePageTopDestinationModel> _listOfTopDestination = [
    HomePageTopDestinationModel(
      id: 1,
      destinationName: "Nagpur",
      imagePath: "assets/nagpurPic.png"
    ),
     HomePageTopDestinationModel(
         id: 2,
         destinationName: "Jaipur",
         imagePath: "assets/jaipurPic.png"
     ),
     HomePageTopDestinationModel(
         id: 3,
         destinationName: "Varanasi",
         imagePath: "assets/varanasiPic.png"
     ),
     HomePageTopDestinationModel(
         id: 4,
         destinationName: "West Bengal",
         imagePath: "assets/westbengalPic.png"
     )
     
  ];


  @override
  void initState() {
    super.initState();
    _selectedTopDestinationId = _listOfTopDestination.first.id!;
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
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: _listOfTopDestination.length ,
                itemBuilder: (context, index){
                  final item = _listOfTopDestination[index];
                  // if(index == 0){
                  //   return SizedBox(width: 0,);
                  // }
                  // if(index == _itemLength + 1){
                  //   return SizedBox(width: 0,);
                  // }
                  return GestureDetector(
                    onTap: (){
                      setState((){
                        _selectedTopDestinationId = item.id!;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(4),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: item.id == _selectedTopDestinationId ? Border.all(color: kOrangeColor, width: 3) : null
                      ),
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(16),
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


