import 'package:flutter/material.dart';
import 'package:solution_sheet_7/product_model.dart';

class FavouriteWidget extends StatelessWidget {
  final Product product;
  const FavouriteWidget({required this.product,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(product.image??"",width: 45,height: 45,),
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
                Text(product.quantity??"",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),)
              ],
            ),
          ),
          Text("\$${product.price}",style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(width: 10,),
          Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black,),
        ],
      ),
    );
  }
}















