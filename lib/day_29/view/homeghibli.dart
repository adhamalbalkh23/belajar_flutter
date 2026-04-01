import 'package:belajar_flutter/day_29/api/get_user.dart';
import 'package:belajar_flutter/day_29/models/user_models.dart';
import 'package:belajar_flutter/day_29/view/detailfilm.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  List<Welcome> movies = [];
  List<Welcome> filteredMovies = [];
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final data = await getUser(); // dari API
    setState(() {
      movies = data;
      filteredMovies = data;
    });
  }

  void searchMovie(String query) {
    final result = movies.where((movie) {
      final title = movie.title?.toLowerCase() ?? "";
      return title.contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredMovies = result;
      isSearching = query.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // HEADER & TITLE
            Container(
              color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ghibflix",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/150?img=3",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Title + Desc
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Collection",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // SEARCH BAR
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: searchMovie,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  filled: true,
                  fillColor: Colors.red,
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            SizedBox(height: 18),

            SizedBox(
              height: 180,
              child: filteredMovies.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : CarouselSlider(
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        autoPlayInterval: Duration(seconds: 3),
                      ),
                      items: movies.map((movie) {
                        return Builder(
                          builder: (context) {
                            return Stack(
                              children: [
                                // IMAGE
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Image.network(
                                      movie.movieBanner ?? movie.image ?? "",
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                // GRADIENT
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0.6),
                                        Colors.transparent,
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                ),

                                // TEXT
                                Positioned(
                                  bottom: 15,
                                  left: 15,
                                  right: 15,
                                  child: Text(
                                    movie.title ?? "",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
            ),

            SizedBox(height: 20),

            // GRID
            Flexible(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8),
                shrinkWrap:
                    true, // Menyesuaikan ukuran grid dengan ruang yang tersedia
                physics:
                    ClampingScrollPhysics(), // Menghindari scroll yang tidak diinginkan
                itemCount: filteredMovies.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12, // Menyesuaikan jarak antar baris
                  crossAxisSpacing: 8, // Menyesuaikan jarak antar kolom
                  mainAxisExtent:
                      320, // Beri tinggi cukup agar konten tidak overflow
                ),
                itemBuilder: (context, index) {
                  final movie = filteredMovies[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailFilm(movie: movie),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // IMAGE CARD
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              movie.movieBanner ?? movie.image ?? "",
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        // TITLE
                        Text(
                          movie.title ?? "-",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        SizedBox(height: 2),

                        // YEAR + CATEGORY
                        Text(
                          "${movie.releaseDate ?? "-"}  •  Movie",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
