import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "AM",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome back!", style: TextStyle(color: Colors.black)),
            Text(
              "Ahmed mohammed",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 35,
          width: 35,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(color: AppColor.textFieldColor),
          ),
          child: Icon(Icons.notification_important_outlined),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(color: AppColor.textFieldColor),
          ),
          child: Icon(Icons.favorite_outline_outlined),
        ),
      ],
    );
  }
}
