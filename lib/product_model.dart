

import 'package:flutter/material.dart';
import 'package:solution_sheet_7/beverages_screen.dart';
import 'package:solution_sheet_7/layout_screen.dart';
import 'package:solution_sheet_7/product_detail_screen.dart';

class Product{
  Color? bgColor;
  String? image;
  String? name;
  String? quantity;
  num? price;
  Widget? nextScreen;
  Product({this.bgColor,this.image,this.name,this.quantity,this.price,this.nextScreen});
}

List<Product> exclusiveOfferList=[
  Product(
      bgColor: Colors.transparent,
    image: "assets/images/banana.png",
    name: "Organic Bananas",
    quantity: "7pcs, Priceg",
    price: 4.99,
    nextScreen: null,
      ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/apple.png",
      name: "Red Apple",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: ProductDetailScreen(),
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/banana.png",
      name: "Organic Bananas",
      quantity: "7pcs, Priceg",
      price: 4.99,
    nextScreen: null,
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/apple.png",
      name: "Red Apple",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: ProductDetailScreen(),
  ),

];
List<Product> bestSellingList=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/tomato.png",
      name: " Red Tomato",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: null,
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/botato.png",
      name: "Organic Botato",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: null,
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/tomato.png",
      name: " Red Tomato",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: null,
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/botato.png",
      name: "Organic Botato",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: null,
  ),
];


List<Product> groceriesHorizList=[
  Product(
      bgColor: Color(0xffF8A44C),
      image: "assets/images/pulses.png",
      name: "Pulses",
  ),
  Product(
      bgColor: Color(0xff53B175),
      image: "assets/images/rice.png",
      name: "Rice",

  ),
];
List<Product> groceriesList=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/beef.png",
      name: "Beef Bone",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: null,
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/chicken.png",
      name: "Broiler Chicken",
      quantity: "1kg, Price",
      price: 4.99,
    nextScreen: null,
  ),
  Product(
    bgColor: Colors.transparent,
    image: "assets/images/beef.png",
    name: "Beef Bone",
    quantity: "1kg, Price",
    price: 4.99,
    nextScreen: null,
  ),
  Product(
    bgColor: Colors.transparent,
    image: "assets/images/chicken.png",
    name: "Broiler Chicken",
    quantity: "1kg, Price",
    price: 4.99,
    nextScreen: null,
  ),
];


List<Product> col1ExpList=[
  Product(
      bgColor: Color(0xff53B175),
      image: "assets/images/fruits.png",
      name: "Frash Fruits \n& Vegetable",
    nextScreen: null,
  ),
  Product(
    bgColor: Color(0xffF7A593),
    image: "assets/images/meat.png",
    name: "Meat & Fish",
    nextScreen: null,
  ),
  Product(
    bgColor: Color(0xffFDE598),
    image: "assets/images/eggs.png",
    name: "Dairy & Eggs",
    nextScreen: null,
  ),
];
List<Product> col2ExpList=[
  Product(
    bgColor: Color(0xffF8A44C),
    image: "assets/images/oil.png",
    name: "Cooking Oil\n    & Ghee",
    nextScreen: null,
  ),
  Product(
    bgColor: Color(0xffD3B0E0),
    image: "assets/images/snacks.png",
    name: "Bakery & Snacks",
    nextScreen: null,
  ),
  Product(
    bgColor: Color(0xffB7DFF5),
    image: "assets/images/beverages.png",
    name: "Beverages",
    nextScreen: BeveragesScreen(),

  ),
];

List<Product> row1Beverages=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/dietCola.png",
      name: "Diet Coke",
      quantity: "355ml, Price",
      price: 1.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/sprite.png",
      name: "Sprite Can",
      quantity: "325ml, Price",
      price: 1.50
  ),

];
List<Product> row2Beverages=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/appleJuice.png",
      name: "Apple & Grape Juice",
      quantity: "2L, Price",
      price: 15.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/orangeJuice.png",
      name: "Orenge Juice",
      quantity: "2L, Price",
      price: 15.99
  ),

];
List<Product> row3Beverages=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/cocacola.png",
      name: "Coca Cola Can",
      quantity: "325ml, Price",
      price: 4.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/pepsiCola.png",
      name: "Pepsi Can ",
      quantity: "330ml, Price",
      price: 4.99
  ),

];


List<Product> row1Search=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/basketEggs.png",
      name: "Egg Chicken Red",
      quantity: "4pcs, Price",
      price: 1.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/plateEggs.png",
      name: "Egg Chicken White",
      quantity: "180g, Price",
      price: 1.50
  ),

];
List<Product> row2Search=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/pastaEggs.png",
      name: "Egg Pasta ",
      quantity: "30gm, Price",
      price: 15.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/nodlesEggs.png",
      name: "Egg Noodles",
      quantity: "2L, Price",
      price: 15.99
  ),

];
List<Product> row3Search=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/jarEggs.png",
      name: "Mayonnais Eggless",
      quantity: "30gm, Price",
      price: 4.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/plasticEggs.png",
      name: "Egg Noodles ",
      quantity: "30gm, Price",
      price: 4.99
  ),

];


List<Product> favouriteList=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/sprite.png",
      name: "Sprite Can",
      quantity: "325ml, Price",
      price: 1.50
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/dietCola.png",
      name: "Diet Coke",
      quantity: "355ml, Price",
      price: 1.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/appleBottle.png",
      name: "Apple & Grape Juice",
      quantity: "2L, Price",
      price: 15.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/cocacola.png",
      name: "Coca Cola Can",
      quantity: "325ml, Price",
      price: 4.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/pepsiCola.png",
      name: "Pepsi Can ",
      quantity: "330ml, Price",
      price: 4.99
  ),
];

List<Product> myCartList=[
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/tomato.png",
      name: "Bell Pepper Red",
      quantity: "1kg, Price",
      price: 4.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/basketEggs.png",
      name: "Egg Chicken Red",
      quantity: "4pcs, Price",
      price: 1.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/banana.png",
      name: "Organic Bananas",
      quantity: "7pcs, Priceg",
      price: 4.99
  ),
  Product(
      bgColor: Colors.transparent,
      image: "assets/images/botato.png",
      name: "Ginger",
      quantity: "1kg, Price",
      price: 4.99
  ),

];
