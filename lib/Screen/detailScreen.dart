import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';
import '../components/movieDetailPoster.dart';
import '../components/movieDetailThumbnail.dart';

class MoviesScreenDetail extends StatelessWidget {
  final movie;

  const MoviesScreenDetail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          MovieDetailThumbnail(thumbnail: movie.image[1]),
          MovieDetailsHeaderWithPoster(movie: movie)
        ],
      ),
    );
  }
}
