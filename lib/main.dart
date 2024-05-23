//Simple HelloWorld
import 'package:flutter/material.dart';
import 'package:movie_app_assignment/home_screen.dart';

void main() {
  runApp(const MyProgram());
}

class MyProgram extends StatelessWidget {

  const MyProgram({super.key});
  @override

  Widget build (BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Moew Moew Movie",
      theme:  ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const HomeScreen(),



    );
  }

}