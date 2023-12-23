import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_model.dart';

import 'home_product_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back_outlined,size: 20,color: Colors.black,),
        clipBehavior: Clip.none,
        centerTitle: false,
        title: Container(
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xffF2F3F2),
            borderRadius: BorderRadius.circular(20),
            border:Border.all(color: Color(0xffF2F3F2),),

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search_outlined,color: Colors.black,),
                SizedBox(width: 5,),
                Expanded(
                  child: Text("Egg",style: TextStyle(
                    color: Colors.black,
                    fontSize: 12
                  ),),
                ),
                Icon(Icons.cancel_outlined,color: Colors.grey,),

              ],
            ),
          ),
        ),
        actions: [
          Image.asset("assets/images/key.png"),
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
                      return HomeProductWidget(product: row1Search[index],);
                    } , separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: row1Search.length),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,

                child: ListView.separated(

                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return HomeProductWidget(product: row2Search[index],);
                    } , separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: row2Search.length),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,

                child: ListView.separated(

                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return HomeProductWidget(product: row3Search[index],);
                    } , separatorBuilder: (context, index) {
                  return SizedBox(width: 10,);
                }, itemCount: row3Search.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
