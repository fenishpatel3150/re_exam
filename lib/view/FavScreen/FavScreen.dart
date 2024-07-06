import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/controller/RecipeProvider.dart';
import 'package:re_exam/view/home/HomeScreen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

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
      body: Consumer<RecipeProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('${provider.dataModel!.recipes?[recipeindex].image}')),
                        color: Color(0xffe53a42),
                        shape: BoxShape.circle
                    ),),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text('${provider.dataModel?.recipes?[dataindex].name}'),
                      Text('${provider.dataModel?.recipes?[dataindex].cuisine}'),
                    ],
                  )
                ],
              )
            ],
          );
        },
      )
    );
  }
}

int dataindex=0;