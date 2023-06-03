import 'package:flutter/material.dart';
import 'package:slr_shoppee/home%20widgets/Product1.dart';

class Categoryx extends StatelessWidget {
  const Categoryx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [SizedBox(height: 200, child: Product1())],
    ));
  }
}
