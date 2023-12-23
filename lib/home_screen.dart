

import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_model.dart';

import 'home_product_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25,width: double.infinity,),
            
                Image.asset("assets/images/yellowCarrot.png",width: 20,height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_rounded,size: 20,color: Colors.black,),
                    Text("Dhaka, Banassre",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                    height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                    border:Border.all(color: Color(0xffF2F3F2),),
            
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.search_outlined,color: Colors.black,),
                        SizedBox(width: 5,),
                        Text("Search Store",style: TextStyle(
                          color: Colors.grey,
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Image.asset("assets/images/bannerfresh.png"),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Exclusive Offer",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text("See all",style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
            
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 180,
            
                      child: ListView.separated(
            
                        scrollDirection: Axis.horizontal,
                       // shrinkWrap: true,
                          //physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                        return HomeProductWidget(product: exclusiveOfferList[index],);
                      } , separatorBuilder: (context, index) {
                        return SizedBox(width: 10,);
                      }, itemCount: exclusiveOfferList.length),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Best Selling",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text("See all",style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
            
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 180,
            
                      child: ListView.separated(
            
                          scrollDirection: Axis.horizontal,
                          //shrinkWrap: true,
                          //physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return HomeProductWidget(product: bestSellingList[index],);
                          } , separatorBuilder: (context, index) {
                        return SizedBox(width: 10,);
                      }, itemCount: bestSellingList.length),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Groceries",style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text("See all",style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],

                    ),
                    SizedBox(height: 10,),

                    SizedBox(
                      height: 125,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: 230,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xffF8A44C),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(

                              children: [
                                Image.asset("assets/images/pulses.png"),
                                SizedBox(width: 10,),
                                Text("Pulses",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                                ),)

                              ],
                            ),
                          ),
                          SizedBox(width:20 ,),
                          Container(
                            width: 230,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xff53B175),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Row(

                              children: [
                                Image.asset("assets/images/rice.png"),
                                SizedBox(width: 10,),
                                Text("Rice",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                                ),)

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),


                    SizedBox(
                      height: 180,

                      child: ListView.separated(

                          scrollDirection: Axis.horizontal,
                          //shrinkWrap: true,
                         // physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return HomeProductWidget(product: groceriesList[index],);
                          } , separatorBuilder: (context, index) {
                        return SizedBox(width: 10,);
                      }, itemCount: groceriesList.length),
                    )
                  ],
                ),
            
                
            
              ],
            
            ),
          ),
        ),
      ),
    );
  }
}
