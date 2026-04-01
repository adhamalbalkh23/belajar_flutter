import 'package:belajar_flutter/day_29/models/user_models.dart';
import 'package:flutter/material.dart';

class DetailFilm extends StatelessWidget {
  final Welcome movie;

  const DetailFilm({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // BANNER + GRADIENT
            Stack(
              children: [
                SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: Image.network(
                    movie.movieBanner ?? movie.image ?? "",
                    fit: BoxFit.cover,
                  ),
                ),

                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),

                SafeArea(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),

            // CONTENT
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "${movie.releaseDate} • ${movie.runningTime} min",
                    style: TextStyle(color: Colors.grey),
                  ),

                  SizedBox(height: 12),

                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Play",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 10),
                      OutlinedButton(onPressed: () {}, child: Text("My List")),
                    ],
                  ),

                  SizedBox(height: 16),

                  Text(
                    movie.description ?? "",
                    style: TextStyle(color: Colors.white70),
                  ),

                  SizedBox(height: 12),

                  Text(
                    "Director: ${movie.director}",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
