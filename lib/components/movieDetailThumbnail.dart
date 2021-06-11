import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

//this is movie on the head detail screen
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
                width: MediaQuery.of(context).size.width,
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
