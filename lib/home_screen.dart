import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/movie_slider.dart';
import 'widgets/trending_slider.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Trending Movies', style: GoogleFonts.aBeeZee(fontSize: 25)),
              const SizedBox(
                height: 16,
              ),
              const TrendingSlider(),
              const SizedBox(
                height: 16,
              ),
              Text("Top rated movies",
                  style: GoogleFonts.aBeeZee(fontSize: 25)),
              const SizedBox(
                height: 32,
              ),
              const  MovieSlider(),

               const SizedBox(
                height: 32,
              ),
              Text("Upcoming movies" , style: GoogleFonts.aBeeZee(fontSize:25),),
             const  MovieSlider(),
            ],
          ),
        ),
      ),
    );
  }
}


