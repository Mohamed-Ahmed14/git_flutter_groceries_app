import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_model.dart';

import 'explore_widget.dart';
import 'home_product_widget.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Find Products",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
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
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(

                      width: 160,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ExploreWidget(product: col1ExpList[index],);
                          }, separatorBuilder: (context, index) {
                        return SizedBox(height: 10,);
                      }, itemCount: col1ExpList.length),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(

                      width: 160,
                      child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ExploreWidget(product: col2ExpList[index],);
                          }, separatorBuilder: (context, index) {
                        return SizedBox(height: 10,);
                      }, itemCount: col2ExpList.length),
                    ),
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
