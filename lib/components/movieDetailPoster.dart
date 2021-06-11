import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';
import 'movieDetailHeader.dart';

//poster below movie detail thumbnail
class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeaderWithPoster({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: <Widget>[
            MoviePoster(poster: movie.image[0].toString()),
            SizedBox(width: 16.0),
            Expanded(child: MovieDetailHeader(movie: movie))
          ],
        ),
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String poster;
  const MoviePoster({Key? key, required this.poster}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(poster), fit: BoxFit.cover))),
      ),
    );
  }
}
