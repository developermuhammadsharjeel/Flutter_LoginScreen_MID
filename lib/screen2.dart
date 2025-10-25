import 'package:flutter/material.dart';
import 'home.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  late final screenWidth = MediaQuery.of(context).size.width;
  late final screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: screenHeight * 0.3,
              width: screenWidth *1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/bg_right_top.png", fit: BoxFit.fitWidth,)),
            ),
            Container(
              width: screenWidth *1,

              decoration: BoxDecoration(
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(child: Text("Welcome to", style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),)),

                  Center(child: Text("JobSnap", style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),)),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: SizedBox(
                      height: 70,
                      width: screenHeight *1,


                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          side: BorderSide(color: Colors.pinkAccent, width: 2),
                          backgroundColor: Colors.pinkAccent,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                        ),
                        child: Text("Login", style: TextStyle(
                          fontSize: 20, color: Colors.white
                        ),)),
                    ),
                  ),

                  const SizedBox(height: 30,),


                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: SizedBox(
                      height: 70,
                      width: screenHeight *1,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp()));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            side: BorderSide(color: Colors.pinkAccent, width: 2),
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                          ),
                          child: Text("Sign Up", style: TextStyle(
                              fontSize: 20, color: Colors.pinkAccent,
                          ),)),
                    ),
                  ),

                  const SizedBox(height: 30,),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        Expanded(child: Divider(thickness: 1, color: Colors.grey,)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "Continue With",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Expanded(child: Divider(thickness: 1, color: Colors.grey,)),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 100, // Reduced height to better fit content
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Image.asset("assets/images/Facebook.png", fit: BoxFit.contain, height: 30,),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Image.asset("assets/images/google.png", fit: BoxFit.contain, height: 30,),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset("assets/images/bg_left_bottom.png"),


                  )
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
