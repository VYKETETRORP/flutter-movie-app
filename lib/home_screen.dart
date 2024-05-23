import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:typed_data';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/flutflix.png',
          fit: BoxFit.cover,
          height: 40,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              'Trending Movies',
              style: GoogleFonts.aBeeZee(fontSize:25)
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: 10, 
                options: CarouselOptions(
                  height: 300 , autoPlay: true,
                  viewportFraction: 0.55,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(seconds: 2)  


                ),
                itemBuilder: (context, ItemIndex, pageViewIndex){

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Container(
                      height: 300,
                      width: 200,
                      color: Colors.amber,
                      
                    ),
                  );
                }
               
              )
            )
          ],
        ),
      ),
    );
  }
}
