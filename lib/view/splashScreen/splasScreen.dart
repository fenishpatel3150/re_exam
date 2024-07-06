import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer timer =Timer(Duration(seconds: 5),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));
    },);
    return Scaffold(
      backgroundColor:  Color(0xffe53a42),
      appBar: AppBar(backgroundColor:  Color(0xffe53a42),),
      body: Column(
        children: [
          Center(child: Image.asset('assets/image1.jpeg')),
        ],
      ),
    );
  }
}