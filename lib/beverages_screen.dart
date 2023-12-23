import 'package:flutter/material.dart';
import 'package:solution_sheet_7/filter_screen.dart';
import 'package:solution_sheet_7/product_model.dart';

import 'home_product_widget.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_outlined,size: 20,color: Colors.black,)),
          centerTitle: true,
          title: Text("Beverages",style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
          actions: [
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FilterScreen();
                  },));
                },
                child: Image.asset("assets/images/key.png")),
            SizedBox(width: 20,),
          ],
        ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
          
                child: ListView.separated(
          
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return HomeProductWidget(product: row1Beverages[index],);
                    } , separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: row1Beverages.length),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
          
                child: ListView.separated(
          
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return HomeProductWidget(product: row2Beverages[index],);
                    } , separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: row2Beverages.length),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
          
                child: ListView.separated(
          
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return HomeProductWidget(product: row3Beverages[index],);
                    } , separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: row3Beverages.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
