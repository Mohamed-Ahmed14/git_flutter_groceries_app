

import 'package:flutter/material.dart';
import 'package:solution_sheet_7/filter_screen.dart';
import 'package:solution_sheet_7/layout_screen.dart';
import 'package:solution_sheet_7/order_accepted_screen.dart';
import 'package:solution_sheet_7/product_detail_screen.dart';
import 'package:solution_sheet_7/search_screen.dart';
import 'package:solution_sheet_7/signup_screen.dart';
import 'package:solution_sheet_7/splash_screen.dart';

import 'account_screen.dart';
import 'beverages_screen.dart';
import 'explore_screen.dart';
import 'favourite_screen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'my_cart_screen.dart';
import 'onboarding_screen.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    //home: OnBoardingScreen(),
    //home: LoginScreen(),
   //home: SignUpScreen(),
   // home: HomeScreen(),
   // home: ExploreScreen(),
   // home: BeveragesScreen(),
   // home: SearchScreen(),
  //  home: FavouriteScreen(),
   // home: MyCartScreen(),
   // home: AccountScreen(),
   // home: OrderAcceptedScreen(),
    //home: FilterScreen(),
    //home: LayoutScreen(),
    //home: ProductDetailScreen(),
  ));
}