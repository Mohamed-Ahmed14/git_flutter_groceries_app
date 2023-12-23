import 'package:flutter/material.dart';
import 'package:solution_sheet_7/account_screen.dart';
import 'package:solution_sheet_7/home_screen.dart';
import 'package:solution_sheet_7/layout_screen.dart';
import 'package:solution_sheet_7/product_model.dart';

import 'favourite_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Favourite",style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Divider(thickness: 1,color: Color(0xffE2E2E2),),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                return FavouriteWidget(product:favouriteList[index]);
              }, separatorBuilder: (context, index) {
                return Divider(thickness: 1,color: Color(0xffE2E2E2),);
              }, itemCount: favouriteList.length),
              Divider(thickness: 1,color: Color(0xffE2E2E2),),
              SizedBox(height: 5,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(320, 50),
                    backgroundColor: Color(0xff53B175),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: (){
                    showDialog(context: context, builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 50,bottom: 25,left: 16,right: 16),
                        child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Container(
                            height: 500,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.transparent)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: IconButton(
                                      icon:Icon(Icons.close),
                                      onPressed: (){
                                        Navigator.pop(context);

                                      },
                                    )),
                                
                                Image.asset("assets/images/failed.png"),

                                Text("Oops! Order Failed",style: TextStyle(
                                    color: Color(0xff181725),
                                    fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  backgroundColor: Colors.transparent,
                                  decoration: TextDecoration.none,
                                ),),

                                Text("Something went tembly wrong.",style: TextStyle(
                                    color: Color(0xff7C7C7C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none,
                                ),),

                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(320, 60),
                                      backgroundColor: Color(0xff53B175),
                                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    ),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text("Please Try Again",style: TextStyle(
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
                            )
                          ),

                        ),
                      );
                    },);
                  },
                  child: Text("Add All To Cart",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,

                  ),)),
            ],
          ),
        ),
      )
    );
  }
}
