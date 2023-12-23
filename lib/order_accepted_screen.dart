import 'package:flutter/material.dart';
import 'package:solution_sheet_7/layout_screen.dart';

import 'home_screen.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(


          children: [

            Image.asset("assets/images/success.png",fit: BoxFit.fill,height: 160,width: 180,),
            SizedBox(height: 25,),

            Expanded(
              child: Column(
                children: [
                  Text("Your Order has been\n          accepted",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
              
                  ),),
                  SizedBox(height: 10,),
              
                  Text("Your items has been placcd and is on\n           it’s way to being processed",
                    style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                ],
              ),
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(320, 60),
                  backgroundColor: Color(0xff53B175),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Track Order",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,

                ),)),

            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(320, 30),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LayoutScreen(),));
              },
              child:Text("Back to home",style: TextStyle(
                  color: Color(0xff181725),
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),), ),
          ],
        ),
      ),
    );
  }
}
