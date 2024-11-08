import 'package:flutter/material.dart';
import 'package:submovie/models/movie_list.dart';
import 'package:submovie/screens/favorite_screen.dart';
import 'package:submovie/widgets/movie_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<HomeScreen> {
  late List<Movie> movies;

  @override
  void initState() {
    super.initState();
    movies = topMovies2024List;
  }

  void toggleFavorite(Movie movie) {
    setState(() {
      movie.isFavorite = !movie.isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie List',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteScreen(movies: movies),
                ),
              );
            },
          ),
        ],
      ),
      body: MovieGrid(
        movies: movies,
        onFavoriteToggle: toggleFavorite,
      ),
    );
  }
}
