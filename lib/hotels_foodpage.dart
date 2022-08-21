import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:teleport_ar/Models/apartment.dart';
import 'package:teleport_ar/Models/user.dart';
import 'package:teleport_ar/constants/colors.dart';
import 'package:teleport_ar/hotelDetails.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HotelsPage extends StatefulWidget {
  const HotelsPage({Key? key}) : super(key: key);

  @override
  _HotelsPageState createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Column(
                  children: [

                    const SizedBox(height: 20,),

                    SizedBox(
                      height: 50,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (ctx, index) {
                          return PhysicalModel(
                              borderRadius: BorderRadius.circular(12),
                            color: Colors.black,
                            elevation: index == 0 ? 0 : 10,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                              decoration: BoxDecoration(
                                color: index == 0 ? kBlueColor : kWhiteColor,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child:  Center( child:  Text("Travel", style: TextStyle(color: index == 0 ? Colors.white : Colors.black , fontWeight: FontWeight.bold),)),
                            ),
                          );
                          },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 12,);
                        },),
                    ),

                    const SizedBox(height: 16,),

                    PhysicalModel(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black,
                      elevation: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Monument or place ...",
                              prefixIcon: Icon(Icons.search,)
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 30,),


                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: const [
                    BigContainer(),
                    SmallContainer(),
                    SmallContainer(),
                    SmallContainer(),

                    BigContainer(),
                    SmallContainer(),
                    SmallContainer(),
                    SmallContainer(),

                    BigContainer(),
                    SmallContainer(),
                    SmallContainer(),
                    SmallContainer(),

                    BigContainer(),
                    SmallContainer(),
                    SmallContainer(),
                    SmallContainer(),
                  ],
                ),

                const SizedBox(height: 100,)
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class BigContainer extends StatelessWidget {
  const BigContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1.5,
      child: Tile(index: 0),
    );
  }
}

class SmallContainer extends StatelessWidget {
  const SmallContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child: Tile(index: 2),
    );
  }
}



class Tile extends StatelessWidget {
  final int index;
  const Tile({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.red,
            image: const DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
              ),
              fit: BoxFit.fill
            ),
          ),
          // child: Stack(
          //   children: [
          //     Image.network(
          //       "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
          //     fit: BoxFit.fill,),
          //     Column(
          //       children: [
          //
          //       ],
          //     ),
          //   ],
          // ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.1, 0.8],
                colors: [Colors.white.withOpacity(0.1), Colors.black.withOpacity(0.5)]
            ),
          ),
        ),

        Positioned(
          bottom: 12,
          left: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Crown 7", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),),
              Text("description", style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    );
  }
}
