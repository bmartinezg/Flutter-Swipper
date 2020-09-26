class Peliculas {

  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList( List<dynamic> jsonList ){
    if (jsonList == null) return;
    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueID;
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
    this.uniqueID
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    popularity       = json['popularity'] / 1; 
    voteCount        = json['vote_count']; 
    video            = json['video']; 
    posterPath       = json['poster_path']; 
    id               = json['id']; 
    adult            = json['adult']; 
    backdropPath     = json['backdrop_path']; 
    originalLanguage = json['original_language']; 
    originalTitle    = json['original_title']; 
    genreIds         = json['genre_ids'].cast<int>(); 
    title            = json['title']; 
    voteAverage      = json['vote_average'] / 1; 
    overview         = json['overview']; 
    releaseDate      = json['release_date']; 
  }

  getPosterImg() {
    if (posterPath == '' ) {
      return 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxDL0cMBIl5E50eiGVrUg6RcMxmZ23RJOWoTf8XKw0fmhhA9tb&usqp=CAU';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }
  getBackgorundImg() {
    if (posterPath == '' ) {
      return 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxDL0cMBIl5E50eiGVrUg6RcMxmZ23RJOWoTf8XKw0fmhhA9tb&usqp=CAU';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
