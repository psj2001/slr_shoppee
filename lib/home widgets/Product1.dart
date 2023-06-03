import 'package:flutter/material.dart';

class Product1 extends StatelessWidget {
  const Product1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://slr-assets-images.s3.amazonaws.com/product-images/uploads/newpic5735e62.jpg?w=96&q=30'),
                ),
                Text(
                  "Holders",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}
