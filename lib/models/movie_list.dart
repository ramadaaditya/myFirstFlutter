class Movie {
  final String title;
  final String director;
  final int releaseYear;
  final String imageAsset;
  final String description;
  bool isFavorite;

  Movie({
    required this.title,
    required this.director,
    required this.releaseYear,
    required this.imageAsset,
    required this.description,
    this.isFavorite = false,
  });
}

var topMovies2024List = [
  Movie(
    title: 'Avatar 3',
    director: 'James Cameron',
    releaseYear: 2024,
    imageAsset: 'assets/images/avatar3.jpeg',
    description:
        'The third installment of the Avatar saga continues the story of the Na\'vi on Pandora.',
  ),
  Movie(
    title: 'Mission: Impossible 8',
    director: 'Christopher McQuarrie',
    releaseYear: 2024,
    imageAsset: 'assets/images/mission_imposible_8.jpg',
    description:
        'Ethan Hunt returns in another thrilling mission with high-stakes action sequences.',
  ),
  Movie(
    title: 'Guardians of the Galaxy Vol. 3',
    director: 'James Gunn',
    releaseYear: 2024,
    imageAsset: 'assets/images/guardian_galaxy.jpg',
    description:
        'The beloved guardians embark on their final adventure together.',
  ),
  Movie(
    title: 'Fantastic Beasts 4',
    director: 'David Yates',
    releaseYear: 2024,
    imageAsset: 'assets/images/fantastic_beast.jpg',
    description:
        'The magical adventures continue in the fourth installment of the Fantastic Beasts series.',
  ),
  Movie(
    title: 'Jurassic World: Dominion',
    director: 'Colin Trevorrow',
    releaseYear: 2024,
    imageAsset: 'assets/images/jurrasic_park.jpg',
    description:
        'Dinosaurs once again roam the Earth in this thrilling conclusion to the Jurassic World trilogy.',
  ),
  Movie(
    title: 'The Flash',
    director: 'Andy Muschietti',
    releaseYear: 2024,
    imageAsset: 'assets/images/the_flash.jpg',
    description:
        'Barry Allen, aka The Flash, races through time to save the world.',
  ),
  Movie(
    title: 'Indiana Jones 5',
    director: 'James Mangold',
    releaseYear: 2024,
    imageAsset: 'assets/images/indian_jones.jpg',
    description: 'Indiana Jones returns for another globe-trotting adventure.',
  ),
  Movie(
    title: 'Spider-Man: Into the Spider-Verse 2',
    director: 'Joaquim Dos Santos',
    releaseYear: 2024,
    imageAsset: 'assets/images/spiderman.jpg',
    description:
        'Miles Morales continues his journey as Spider-Man in the multiverse.',
  ),
  Movie(
    title: 'Black Panther: Wakanda Forever',
    director: 'Ryan Coogler',
    releaseYear: 2024,
    imageAsset: 'assets/images/wakanda.jpg',
    description:
        'The people of Wakanda fight to protect their home in the wake of King T\'Challa\'s death.',
  ),
  Movie(
    title: 'Aquaman 2',
    director: 'James Wan',
    releaseYear: 2024,
    imageAsset: 'assets/images/aquaman.jpg',
    description:
        'Arthur Curry returns to the underwater kingdom of Atlantis to face new threats.',
  ),
];
