import 'package:app1/Screen/detailScreen.dart';
import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final int index;
  final List<Movie> movie = Movie.getMovie();

  HorizontalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MoviesScreenDetail(movie: movie[index])))
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 20.0,
              child: Container(
                height: 200.0,
                width: 130.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                        image: NetworkImage(movie[index].image[0]),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                movie[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
