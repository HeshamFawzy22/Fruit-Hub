import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("OnBoardingView", style: TextStyle(color: Colors.black),)),
    );
  }
} 