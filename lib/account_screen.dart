import 'package:flutter/material.dart';
import 'package:solution_sheet_7/account_model.dart';
import 'package:solution_sheet_7/splash_screen.dart';

import 'account_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Image.asset("assets/images/profile.png"),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Afsar Hossen",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),),
                SizedBox(width: 10,),
                Icon(Icons.edit,color: Color(0xff53B175),size: 15,),
              ],
            ),
            Text("Imshuvo97@gmail.com",style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 18
            ),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Divider(thickness: 1,color:Color(0xffF2F3F2),),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return AccountWidget(option:optionList[index]);
                }, separatorBuilder: (context, index) {
              return SizedBox(height: 3,);
            }, itemCount: optionList.length),

            Divider(thickness: 1,color:Color(0xffF2F3F2),),
            SizedBox(height: 5,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(320, 50),
                  backgroundColor: Color(0xffF2F3F2),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SplashScreen();
                  },));
                },
                child: Row(
                  children: [
                    Icon(Icons.logout_outlined,color: Color(0xff53B175),),
                    SizedBox(width: 80,),
                    Text("Logout",style: TextStyle(
                      color: Color(0xff53B175),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),),
                  ],
                )),


          ],
        ),
      ),

    );
  }
}
