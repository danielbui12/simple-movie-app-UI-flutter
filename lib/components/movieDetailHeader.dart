import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

//detail beside poster
class MovieDetailHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${movie.released}".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.cyan),
          ),
          Text("${movie.title}", style: TextStyle(fontSize: 30.0)),
          Text.rich(
            TextSpan(children: <TextSpan>[
              TextSpan(text: movie.plot),
              TextSpan(
                  text: "More...", style: TextStyle(color: Colors.indigoAccent))
            ]),
          )
        ],
      ),
    );
  }
}
