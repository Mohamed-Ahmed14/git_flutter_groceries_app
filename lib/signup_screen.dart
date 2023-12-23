import 'package:flutter/material.dart';
import 'package:solution_sheet_7/layout_screen.dart';
import 'package:solution_sheet_7/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(child: Image.asset("assets/images/yellowCarrot.png")),
              SizedBox(height: 20,),
              Text("Sign Up",style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),),
              Text("Enter your credentials to continue",style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),),
              SizedBox(height: 20,),
              Text("Username",style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 45,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xff181725),
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(20),
                      //   borderSide: BorderSide(
                      //     color: Colors.grey[300]!,
                      //   ),
                      // ),
                      //   enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(20),
                      //     borderSide: BorderSide(
                      //       color: Colors.grey[300]!,
                      //     ),
                      //   ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(20),
                      //   borderSide: BorderSide(
                      //     color: Colors.grey[300]!,
                      //   ),
                      // )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Email",style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 45,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xff181725),
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(20),
                      //   borderSide: BorderSide(
                      //     color: Colors.grey[300]!,
                      //   ),
                      // ),
                      //   enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(20),
                      //     borderSide: BorderSide(
                      //       color: Colors.grey[300]!,
                      //     ),
                      //   ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(20),
                      //   borderSide: BorderSide(
                      //     color: Colors.grey[300]!,
                      //   ),
                      // )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Password",style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              SizedBox(height: 45,
                child: TextFormField(

                  style: TextStyle(
                    color: Color(0xff181725),
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    //
                    //   borderSide: BorderSide(
                    //
                    //     color: Colors.grey[300]!,
                    //   ),
                    // ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    //   borderSide: BorderSide(
                    //     color: Colors.grey[300]!,
                    //   ),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    //   borderSide: BorderSide(
                    //     color: Colors.grey[300]!,
                    //   ),
                    // ),
                    suffixIcon: Icon(Icons.visibility_off_rounded,color: Color(0xff7C7C7C),),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("By continue you are agree to our",style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),),
                    TextButton(
                        onPressed: (){},
                        child: Text("Terms of Service ",style: TextStyle(
                            color: Color(0xff53B175),
                            fontSize: 12

                        ),)),
                  ],
                ),
              ),
              SizedBox(height: 30,
                child: Row(
                  children: [
                    Text("and",style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),),
                    TextButton(onPressed: (){},
                        child: Text("Privacy Policy.",style: TextStyle(
                            color: Color(0xff53B175),
                            fontSize: 12

                        ),)),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(320, 60),
                    backgroundColor: Color(0xff53B175),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LayoutScreen();
                    },));
                  },
                  child: Text("Sign Up",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,

                  ),)),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(
                    color: Color(0xff181725),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      },));
                  },
                      child: Text("Log in",style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 14

                      ),)),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
