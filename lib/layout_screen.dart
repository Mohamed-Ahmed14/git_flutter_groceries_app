import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solution_sheet_7/account_screen.dart';
import 'package:solution_sheet_7/explore_screen.dart';
import 'package:solution_sheet_7/favourite_screen.dart';
import 'package:solution_sheet_7/home_screen.dart';
import 'package:solution_sheet_7/my_cart_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  int currentIndex=0;
  List<Widget> screens=[
    HomeScreen(),
    ExploreScreen(),
    MyCartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },

        iconSize: 25,
        selectedItemColor: Color(0xff53B175),
        unselectedItemColor: Color(0xff030303),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
            label: "Shop"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search_outlined,size: 30,),
              label: "Explore",

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: "Favourite"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
