

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/controller/RecipeProvider.dart';
import 'package:re_exam/view/home/SecondScreen/SecondScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffe53a42),
          title: Text(
            'Zomato',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Consumer<RecipeProvider>(
          builder: (context, provider, child) {
            if(provider.loading)
              {
                return Center(child: CircularProgressIndicator(),);
              }
            else{
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 40,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color:  Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5
                                )
                              ]
                          ),
                          child: DefaultTextStyle(
                            style: TextStyle(color: Colors.grey),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                Text("     Search items")
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffe53a42),
                            shape: BoxShape.circle
                            ,boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5
                          )
                        ]
                        ),
                        child: Icon(
                          Icons.list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: provider.dataModel?.recipes?.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 3/4,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) => Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(),))
;                         recipeindex=index;
                            },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:180,
                                  width: 450,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage('${provider.dataModel?.recipes?[index].image}'),fit: BoxFit.fill),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                  ),
                                ),
                                Text('${provider.dataModel?.recipes?[index].name}',style: TextStyle(color: Colors.black,fontSize: 12),),
                                Text('${provider.dataModel?.recipes?[index].cuisine}',style: TextStyle(color: Colors.black,fontSize: 12),),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }
          },
        )
    );
  }
}

int recipeindex =0;