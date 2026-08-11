import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String image;
  final String catName;
  const Categories({super.key, required this.image, required this.catName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(image, height: 40, width: 30),
          ),
          Text(catName),
        ],
      ),
    );
  }
}
