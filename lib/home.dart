// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slr_shoppee/home%20widgets/Product1.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<String> images = [
    'https://slr-assets-images.s3.amazonaws.com/banner/newpic23edf05.jpg?w=1920&q=75',
    'https://slr-assets-images.s3.amazonaws.com/banner/newpic23edf054.jpg?w=1920&q=75',
    'https://slr-assets-images.s3.amazonaws.com/banner/newpic23edf053.jpg?w=1920&q=75',
    'https://slr-assets-images.s3.amazonaws.com/banner/newpic23edf054.jpg?w=1920&q=75'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned: true,
            title: Image.network(
              'https://www.slrshoppee.com/_next/image?url=%2FlogoLatest2.png&w=1920&q=75',
              height: 65,
            ),
            backgroundColor: Colors.amber,
            actions: [
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.qr_code_2_rounded))),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.notifications))),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.chat))),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.amber,
              title: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ' Search Here',
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    suffixIcon: Icon(Icons.mic),
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 350,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(11)),
                  child: CarouselSlider.builder(
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            image: DecorationImage(
                                image: NetworkImage(images[index]),
                                fit: BoxFit.fill)),
                      );
                    },
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 1,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                  ),
                ),
                Divider(),
                SizedBox(height: 200, child: Product1())
              ],
            ),
          )
        ],
      ),
    );
  }
}
