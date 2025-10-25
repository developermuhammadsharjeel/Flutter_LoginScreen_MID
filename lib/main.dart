import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'screen2.dart';


void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ),
);

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginForm(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(
      body:  Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          color: Colors.pinkAccent,
        ),
        child: Center(
          child: Text("Job Snap", style: TextStyle(
            fontFamily: "Courgette",
            fontWeight: FontWeight.bold,
            fontSize: 55,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}

