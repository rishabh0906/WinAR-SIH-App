import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:teleport_ar/Models/apartment.dart';
import 'package:teleport_ar/Models/user.dart';
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red,
        image: const DecorationImage(
          image: NetworkImage("https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
          ),
          fit: BoxFit.fill
        )
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
    );
  }
}
