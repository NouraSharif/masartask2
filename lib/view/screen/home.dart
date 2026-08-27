import 'package:flutter/material.dart';
import 'package:masar2/core/class/color.dart';
import 'package:masar2/view/widget/home/homeheader.dart';
import 'package:masar2/view/widget/home/categories.dart';
import 'package:masar2/view/widget/home/elementtitle.dart';
import 'package:masar2/view/widget/home/products.dart';
import 'package:masar2/view/widget/home/stackcolumn.dart';
import 'package:masar2/view/widget/home/textformfield.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(15.0), child: HomeHeader()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: TextFormFieldWidget(),
          ),
          Stack(
            children: [
              Container(
                height: 165,
                color: Colors.amber,
                width: double.infinity,
              ),
              Positioned(right: 0, child: Image.asset("images/logo2.png")),
              Positioned(left: 35, top: 10, child: StackColumn()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElementTitle(title: "New products"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount;

                if (constraints.maxWidth < 600) {
                  crossAxisCount = 2;
                } else if (constraints.maxWidth < 900) {
                  crossAxisCount = 3;
                } else {
                  crossAxisCount = 4;
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return const Products();
                  },
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 140,
            width: double.infinity,
            color: AppColor.textFieldColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  ElementTitle(title: "Categories"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Categories(
                          image: "images/mobile.png",
                          catName: 'Smartphone',
                        ),

                        Categories(
                          image: "images/laptop.png",
                          catName: 'Laptop',
                        ),
                        Categories(
                          image: "images/airpods.png",
                          catName: 'Airpods',
                        ),
                        Categories(
                          image: "images/smartwatch.png",
                          catName: 'Smartwatch',
                        ),
                        Categories(
                          image: "images/mobile.png",
                          catName: 'Smartphone',
                        ),

                        Categories(
                          image: "images/laptop.png",
                          catName: 'Laptop',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElementTitle(title: "Most Solid"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount;

                if (constraints.maxWidth < 600) {
                  crossAxisCount = 2;
                } else if (constraints.maxWidth < 900) {
                  crossAxisCount = 3;
                } else {
                  crossAxisCount = 4;
                }

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    return const Products();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
