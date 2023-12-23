import 'package:flutter/material.dart';
import 'package:solution_sheet_7/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(child: Center(child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return OnBoardingScreen();
          },));
        },
          child: Image.asset("assets/images/carrot.png")))),

    );
  }
}
