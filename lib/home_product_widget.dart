import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_detail_screen.dart';
import 'package:solution_sheet_7/product_model.dart';

class HomeProductWidget extends StatelessWidget {
  final Product product;
  const HomeProductWidget({required this.product,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(product.nextScreen != null)
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProductDetailScreen();
          },));
      },
      child: Container(
      
        padding: EdgeInsets.all(8),
        width: 160,
        decoration: BoxDecoration(
          color: product.bgColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Center(child: Image.asset(product.image??""))),
            SizedBox(height: 10,),
            Text(product.name??"",style: TextStyle(
              color: Colors.black,
              fontSize: 14
            ),),
            Text(product.quantity??"",style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 14,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("\$${product.price}")),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: (){},
                  child: Icon(Icons.add,color: Colors.white,),
                  backgroundColor: Color(0xff53B175),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
