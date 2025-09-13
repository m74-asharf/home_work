/**Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
 only the movies with a rating above 7. */

class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);
}

void main() {
  List<Movie> movies = [
    Movie("Intersteller", 8.8),
    Movie("Conjuring", 3.7),
    Movie("Saw", 8.6),
    Movie("Titanic", 8.9),
  ];

  print("Movies with rating above 7:");
  for (var movie in movies) {
    if (movie.rating > 7) {
      print("${movie.title} - Rating: ${movie.rating}");
    }
  }
}
