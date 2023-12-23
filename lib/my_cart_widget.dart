import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_model.dart';

class MyCartWidget extends StatelessWidget {
  final Product product;
  const MyCartWidget({required this.product,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(product.image??"",width: 50,height: 50,),
        SizedBox(width: 15,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name??"",style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),),
              //SizedBox(height: 5,),
              Text(product.quantity??"",style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
              //SizedBox(height: 5,),
              Row(
                children: [
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: FloatingActionButton(
                      onPressed: (){},
                      child: Align(alignment: AlignmentDirectional.topCenter,
                          child: Icon(Icons.minimize_outlined,color: Colors.grey,)),
                      backgroundColor: Colors.white,),
                  ),
                  SizedBox(width: 10,),
                  Text("1",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),),
                  SizedBox(width: 10,),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: FloatingActionButton(
                      onPressed: (){},
                      child: Icon(Icons.add,color: Colors.green,),
                      backgroundColor: Colors.white,),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(

          children: [
            Icon(Icons.close,size: 20,color: Colors.grey,),
            SizedBox(height: 40,),
            Text("\$${product.price}",style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),),
          ],
        ),

      ],
    );
  }
}
