import 'package:flutter/material.dart';
import 'package:solution_sheet_7/order_accepted_screen.dart';
import 'package:solution_sheet_7/product_model.dart';

import 'my_cart_widget.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Cart",style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Divider(thickness: 1,color: Colors.grey,),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return MyCartWidget(product:myCartList[index]);
                    }, separatorBuilder: (context, index) {
                  return Divider(thickness: 1,color: Colors.grey,);
                }, itemCount: myCartList.length),
                Divider(thickness: 1,color: Colors.grey,),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(320, 50),
                      backgroundColor: Color(0xff53B175),
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: (){
                      showModalBottomSheet(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight:Radius.circular(25) ,topLeft: Radius.circular(25)),
                       
                        ),
                        context: context, builder: (context) {
                        return Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Checkout",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 24,
                                  ),),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                      child: Icon(Icons.close,color: Color(0xff181725),)),
                                ],
                              ),
                              Divider(
                                color: Color(0xffE2E2E2),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text("Delivery",style: TextStyle(
                                      color: Color(0xff7C7C7C),
                                      fontSize: 18,
                                    ),),
                                  ),
                                  Text("Select Method",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff181725),size: 16,),
                                ],
                              ),
                              Divider(
                                color: Color(0xffE2E2E2),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text("Pament",style: TextStyle(
                                      color: Color(0xff7C7C7C),
                                      fontSize: 18,
                                    ),),
                                  ),
                                  Image.asset("assets/images/card.png"),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff181725),size: 16,),
                                ],
                              ),
                              Divider(
                                color: Color(0xffE2E2E2),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text("Promo Code",style: TextStyle(
                                      color: Color(0xff7C7C7C),
                                      fontSize: 18,
                                    ),),
                                  ),
                                  Text("Pick discount",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff181725),size: 16,),
                                ],
                              ),
                              Divider(
                                color: Color(0xffE2E2E2),
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text("Total Cost",style: TextStyle(
                                      color: Color(0xff7C7C7C),
                                      fontSize: 18,
                                    ),),
                                  ),
                                  Text("Total Cost",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff181725),size: 16,),
                                ],
                              ),
                              Divider(
                                color: Color(0xffE2E2E2),
                                thickness: 1,
                              ),
                              Text("By placing an order you agree to our",style: TextStyle(
                                color: Color(0xff7C7C7C),
                                fontSize: 14
                              ),),
                              Row(
                                children: [
                                  Text("Terms ",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 14,
                                  ),),
                                  Text("and ",style: TextStyle(
                                    color: Color(0xff7C7C7C),
                                    fontSize: 14,
                                  ),),
                                  Text("Conditons",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 14,
                                  ),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(340, 60),
                                    backgroundColor: Color(0xff53B175),
                                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return OrderAcceptedScreen();
                                    },));

                                  },
                                  child: Text("Place Order",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,

                                  ),)),

                            ],
                          ),
                        );
                      },);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Go To Checkout",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,

                        ),),
                        SizedBox(width: 60),
                        Container(
                          width: 40,
                          height: 18,
                          color: Colors.green[300],
                          child: Text("\$12.96",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,

                          ),),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        )
    );
  }
}
