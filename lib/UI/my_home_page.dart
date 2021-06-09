// import 'package:app1/model/questions.dart';
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
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                size: 30.0,
              ))
        ],
      ),
      backgroundColor: Colors.blueGrey.shade200,
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
                          fontWeight: FontWeight.bold, fontSize: 16.0),
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
        children: <Widget>[MovieDetailThumbnail(thumbnail: movie.image[1])],
      ),
    );
  }
}

class MovieDetailThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(thumbnail), fit: BoxFit.cover)),
              ),
              Icon(Icons.play_circle_outlined, size: 100.0, color: Colors.white)
            ],
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            height: 60.0,
          )
        ],
      ),
    );
  }
}

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeaderWithPoster({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[MoviePoster(poster: movie.image[0].toString())],
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
      child: Text(''),
    );
  }
}
