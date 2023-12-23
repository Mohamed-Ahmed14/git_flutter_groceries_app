import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
        actions: [
          Icon(Icons.file_download_outlined,color: Colors.black,),
          SizedBox(width: 20,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/applePic.png",width:double.infinity,height: 150,),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Naturel Red Apple",style: TextStyle(
                  color: Colors.black,
                  fontSize: 24
                ),),
                Icon(Icons.favorite_border_outlined),
              ],
            ),
            Text("1kg, Price",style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 16
            ),),
            Row(
              children: [
               Expanded(
                 child: Row(
                   children: [
                     Text("-",style: TextStyle(
                       color: Color(0xffB3B3B3),
                       fontSize: 40,

                     ),),
                     SizedBox(width: 20,),
                     Container(
                       padding: EdgeInsets.all(2),
                       width: 30,
                       height: 32,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(12),
                         border:Border.all(
                           color: Color(0xffE2E2E2),
                         ),
                       ),
                       child: Center(
                         child: Text("1",style: TextStyle(
                             color: Color(0xff181725),
                             fontSize: 20
                         ),),
                       ),
                     ),
                     SizedBox(width: 20,),
                     Text("+",style: TextStyle(
                         color: Color(0xff53B175),
                         fontSize: 24
                     ),),
                   ],
                 ),
               ),
                Text("\$4.99",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            Divider(color: Color(0xffE2E2E2),
            thickness: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Product Detail",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
            Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 13,
            ),),
            Divider(color: Color(0xffE2E2E2),
              thickness: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("Nutritions",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                ),
                Container(
                  padding: EdgeInsets.all(2),

                  decoration: BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(12),
                    border:Border.all(
                      color: Color(0xffEBEBEB),
                    ),
                  ),
                  child: Center(
                    child: Text("100gr",style: TextStyle(
                        color: Color(0xff7C7C7C),
                        fontSize: 9
                    ),),
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios_outlined,size: 16,),
              ],
            ),
            Divider(color: Color(0xffE2E2E2),
              thickness: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("Review",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                ),
                Icon(Icons.star,color: Color(0xffF3603F),),
                Icon(Icons.star,color: Color(0xffF3603F),),
                Icon(Icons.star,color: Color(0xffF3603F),),
                Icon(Icons.star,color: Color(0xffF3603F),),
                Icon(Icons.star,color: Color(0xffF3603F),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios_outlined,size: 16,),

              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(320, 60),
                  backgroundColor: Color(0xff53B175),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: (){

                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return LayoutScreen();
                  // },));

                },
                child: Text("Add To Basket",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,

                ),)),

          ],
        ),
      ),
    );
  }
}
