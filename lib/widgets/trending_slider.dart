import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_assignment/api/screens/details_screen.dart';
import 'package:movie_app_assignment/constants.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: CarouselSlider.builder(
            itemCount: snapshot.data!.length,
            options: CarouselOptions(
                height: 300,
                autoPlay: true,
                viewportFraction: 0.55,
                enlargeCenterPage: true,
                pageSnapping: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(seconds: 2)),
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        movie: snapshot.data[itemIndex],
                      ),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 300,
                    width: 200,
                    child: Image.network(
                      '${Constants.imagePath}${snapshot.data[itemIndex].posterPath}',
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }));
  }
}
