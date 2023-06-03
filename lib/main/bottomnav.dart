import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';
import 'package:slr_shoppee/Sell.dart';
import 'package:slr_shoppee/profile.dart';

import '../categories.dart';
import '../home.dart';

class Bottom1 extends StatefulWidget {
  const Bottom1({super.key});

  @override
  State<Bottom1> createState() => _Bottom1State();
}

class _Bottom1State extends State<Bottom1> {
  int index = 0;
  String page = 'Grey';
  var pag = [
    Home(),
    const Sell(),
    Categoryx(),
    Porfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonSelectedColor: Colors.amber,
        buttonData: [
          PandaBarButtonData(
              id: 'Grey', icon: Icons.home_outlined, title: 'Home'),
          PandaBarButtonData(
              id: 'Blue', icon: Icons.shopping_cart_outlined, title: 'Cart'),
          PandaBarButtonData(
              id: 'Red', icon: Icons.category_outlined, title: 'Categories'),
          PandaBarButtonData(
              id: 'Yellow', icon: Icons.person_3_outlined, title: 'Profile'),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {},
        fabColors: [
          Colors.amber,
          Colors.yellow,
        ],
        fabIcon: Icon(Icons.add),
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Grey':
              return Home();
            case 'Blue':
              return Sell();
            case 'Red':
              return Categoryx();
            case 'Yellow':
              return Porfile();
            default:
              return Container();
          }
        },
      ),
    );
  }
}
