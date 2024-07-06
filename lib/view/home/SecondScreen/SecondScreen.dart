import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe53a42),
        title: Text(
          'Zomato',
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
      ),

      body: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              )
            ],
          ),
          ),
        ],
      ),
    );
  }
}
