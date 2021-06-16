import 'package:app1/components/horizontalList.dart';
import 'package:app1/components/verticalMoviesList.dart';
import 'package:app1/model/button.dart';
import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  final List<Movie> movieList = Movie.getMovie();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Augustus Flynn"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  size: 30.0,
                ))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Button(
                title: "Recommend",
              ),
              Container(
                height: 260.0,
                margin: const EdgeInsets.only(top: 10.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movieList.length,
                  itemBuilder: (BuildContext context, int i) =>
                      HorizontalList(i),
                ),
              ),
              Divider(thickness: 1.0),
              Button(
                title: "Hot 2019",
              ),
              Container(
                  height: 550.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: movieList.length,
                    itemBuilder: (BuildContext context, int y) =>
                        MoviesVerticalList(y),
                  ))
            ],
          ),
        ));
  }
}
