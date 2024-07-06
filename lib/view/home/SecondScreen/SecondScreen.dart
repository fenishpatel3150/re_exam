import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/controller/RecipeProvider.dart';
import 'package:re_exam/model/DataModel.dart';
import 'package:re_exam/view/home/HomeScreen.dart';

import '../../FavScreen/FavScreen.dart';

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
        actions: [
          IconButton(onPressed: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardScreen(),));
              }, icon: Icon(Icons.card_giftcard))
        ],
        leading: GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: Consumer<RecipeProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(image: NetworkImage('${provider.dataModel?.recipes![recipeindex].image}'),fit: BoxFit.cover)
                    ),
                  ),
                ),
                Center(child: Text('${provider.dataModel?.recipes?[recipeindex].name}',style: TextStyle(color: Colors.black,fontSize: 20),)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Instructions :  ${provider.dataModel?.recipes?[recipeindex].instructions}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Ingredients :  ${provider.dataModel?.recipes?[recipeindex].ingredients}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Difficulty :  ${provider.dataModel?.recipes?[recipeindex].difficulty}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('cuisine :  ${provider.dataModel?.recipes?[recipeindex].cuisine}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('caloriesPerServing :  ${provider.dataModel?.recipes?[recipeindex].caloriesPerServing}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('cookTimeMinutes :  ${provider.dataModel?.recipes?[recipeindex].cookTimeMinutes}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('prepTimeMinutes :  ${provider.dataModel?.recipes?[recipeindex].prepTimeMinutes}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Tags :  ${provider.dataModel?.recipes?[recipeindex].tags}',style: TextStyle(color: Colors.black,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text('${provider.dataModel?.recipes?[recipeindex].rating}'),

                    ],
                  ),
                )
                ,
                GestureDetector(
                  onTap: ()
                  {
                    provider.cradList.add(provider.dataModel?.recipes?[recipeindex] as DataModel);
                  },
                  child: Center(
                    child: Container(
                     height: 50,
                     width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffe53a42) ,
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          Text('Favorite',style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )
    );
  }
}
