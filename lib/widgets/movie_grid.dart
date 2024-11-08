import 'package:flutter/material.dart';
import 'package:submovie/models/movie_list.dart';
import 'package:submovie/widgets/movie_card.dart';
import 'package:submovie/screens/detail_screen.dart';

class MovieGrid extends StatelessWidget {
  final List<Movie> movies;
  final Function(Movie) onFavoriteToggle;

  const MovieGrid({
    super.key,
    required this.movies,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        if (constraints.maxWidth > 1100) {
          crossAxisCount = 6;
        } else if (constraints.maxWidth > 600) {
          crossAxisCount = 4;
        } else if (constraints.maxWidth <= 560) {
          crossAxisCount = 1;
        } else {
          crossAxisCount = 2;
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: crossAxisCount == 1 ? 3 / 2 : 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          padding: const EdgeInsets.all(10),
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return MovieCard(
              movie: movies[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(movie: movies[index]),
                  ),
                );
              },
              onFavoriteToggle: () => onFavoriteToggle(movies[index]),
            );
          },
        );
      },
    );
  }
}
