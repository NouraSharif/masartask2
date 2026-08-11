import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            color: AppColor.textFieldColor,
            width: 170,
            child: Image.asset("images/mobile.png", height: 90),
          ),
          Text("Apple iPhone 14 Pro Max\n256GB Beep purple 5G..."),
          SizedBox(height: 10),
          Row(
            spacing: 70,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "\$3,999",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("25 gin", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const Text("⭐ 4.2"),
            ],
          ),
        ],
      ),
    );
  }
}
