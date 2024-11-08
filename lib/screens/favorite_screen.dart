import 'package:flutter/material.dart';
import 'package:submovie/models/movie_list.dart';
import 'package:submovie/widgets/movie_grid.dart';

class FavoriteScreen extends StatefulWidget {
  final List<Movie> movies;

  const FavoriteScreen({super.key, required this.movies});

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late List<Movie> favoriteMovies;

  @override
  void initState() {
    super.initState();
    favoriteMovies = widget.movies.where((movie) => movie.isFavorite).toList();
  }

  void toggleFavorite(Movie movie) {
    setState(() {
      movie.isFavorite = !movie.isFavorite;
      favoriteMovies =
          widget.movies.where((movie) => movie.isFavorite).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite Movies',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: MovieGrid(
        movies: favoriteMovies,
        onFavoriteToggle: toggleFavorite,
      ),
    );
  }
}
