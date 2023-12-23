import 'package:flutter/material.dart';
import 'package:solution_sheet_7/login_screen.dart';
import 'package:solution_sheet_7/signup_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntrinsicHeight(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/man.png",fit: BoxFit.fill,),
            PositionedDirectional(
              bottom: 30,
              start: MediaQuery.of(context).size.width/2-150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/whiteCarrot.png",width: 45,height: 45,),
                  SizedBox(height: 15,),
                  Text("  Welcome\nto our store",style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 15,),

                  Text("Get your groceries in as fast as one hour ",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        maximumSize: Size(250, 67),
                      ),
                        onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SignUpScreen();
                            },));
                        },
                        child: Text("Get Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),)),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
