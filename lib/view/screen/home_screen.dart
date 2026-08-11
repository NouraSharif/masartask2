import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masar2/view/screen/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  List<Widget> listWidget = [
    Home(),
    Center(child: Text("Categories")),
    Center(child: Text("Orders")),
    Center(child: Text("More")),
    Center(child: Text("Cart")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selected == 0
                  ? "assets/icons/home_filled.svg"
                  : "assets/icons/home.svg",
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selected == 1
                  ? "assets/icons/categories_filled.svg"
                  : "assets/icons/categories.svg",
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selected == 2
                  ? "assets/icons/orders_filled.svg"
                  : "assets/icons/orders.svg",
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selected == 3
                  ? "assets/icons/more_filled.svg"
                  : "assets/icons/more.svg",
            ),
            label: "More",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selected == 4
                  ? "assets/icons/cart_filled.svg"
                  : "assets/icons/cart.svg",
            ),
            label: "Cart",
          ),
        ],
      ),

      body: listWidget.elementAt(selected),
    );
  }
}
