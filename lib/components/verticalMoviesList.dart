import 'package:app1/Screen/detailScreen.dart';
import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

class MoviesVerticalList extends StatelessWidget {
  final int index;
  final List<Movie> movie = Movie.getMovie();

  MoviesVerticalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      margin: const EdgeInsets.only(top: 16.0, right: 8.0),
      child: InkWell(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MoviesScreenDetail(movie: movie[index])))
        },
        child: Row(
          children: <Widget>[
            Container(
              height: 148.0,
              width: 98.0,
              margin: const EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage(movie[index].image[0]),
                      fit: BoxFit.cover)),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movie[index].title,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        movie[index].subtitle,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ))
                  // Container(, child: Text(verticalList[0].subtitle))
                ])
          ],
        ),
      ),
    );
  }
}
