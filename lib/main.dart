import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/controller/RecipeProvider.dart';
import 'package:re_exam/view/home/HomeScreen.dart';
import 'package:re_exam/view/splashScreen/splasScreen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => RecipeProvider(),),
    ],child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
     home: SplashScreen(),
    );
  }
}
