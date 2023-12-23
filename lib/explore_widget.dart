import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_model.dart';

class ExploreWidget extends StatelessWidget {
  final Product product;
  const ExploreWidget({required this.product,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){
        if(product.nextScreen != null)
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return product.nextScreen!;
        },)
        );
      },
      child: Container(
      
        padding: EdgeInsets.all(8),
         height: 180,
        // width: 160,
        decoration: BoxDecoration(
          color: product.bgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Center(child: Image.asset(product.image??""))),
            SizedBox(height: 10,),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Text(product.name??"",style: TextStyle(
                  color: Colors.black,
                  fontSize: 14
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
