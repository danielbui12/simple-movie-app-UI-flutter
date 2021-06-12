import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';
import '../Screen/detailScreen.dart';

class AllMovies extends StatelessWidget {
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
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext contex, int index) {
            return Stack(
              children: <Widget>[
                Positioned(
                  child: movieCard(movieList[index], context),
                ),
                Positioned(
                  top: 8.0,
                  left: 5.0,
                  child: movieImage(movieList[index].image[0]),
                ),
              ],
            );
          }),
    );
  }

  movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        color: Colors.grey,
        margin: EdgeInsets.only(bottom: 7.0),
        width: MediaQuery.of(context).size.width,
        height: 170.0,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      movie.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.0),
                    ),
                    Text(
                      "Rating: ${movie.rate} / 10",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Released: ${movie.released}",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "${movie.time} min",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      movie.genre,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MoviesScreenDetail(movie: movie)))
      },
    );
  }

  movieImage(String imgUrl) {
    return Container(
      width: 100.0,
      height: 155.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image:
              DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover)),
    );
  }
}
