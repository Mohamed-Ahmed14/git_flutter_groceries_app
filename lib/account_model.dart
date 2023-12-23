import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Options{
  String? image;
  String? name;

  Options({this.image,this.name});

}

List<Options> optionList=[
  Options(
    image: ("assets/images/order.png"),
    name: "Orders",
  ),
  Options(
    image: ("assets/images/details.png"),
    name: "My Details",
  ),

  Options(
    image: ("assets/images/address.png"),
    name: "Delivery Address",
  ),
  Options(
    image: ("assets/images/payment.png"),
    name: "Payment Method",
  ),
  Options(
    image: ("assets/images/promo.png"),
    name: "Promo Card",
  ),
  Options(
    image: ("assets/images/bell.png"),
    name: "Notification",
  ),
  Options(
    image: ("assets/images/help.png"),
    name: "Help",
  ),
  Options(
    image: ("assets/images/about.png"),
    name: "About",
  ),

];