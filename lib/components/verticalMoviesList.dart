import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

class MoviesVerticalList extends StatelessWidget {
  final List verticalList = [
    MovieVertical.nam(
        "Advengers: Endgame",
        "The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take one final stand in Marvel Studios’ grand conclusion ...",
        "https://upload.wikimedia.org/wikipedia/vi/thumb/2/2d/Avengers_Endgame_bia_teaser.jpg/220px-Avengers_Endgame_bia_teaser.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10.0,
          margin: const EdgeInsets.only(top: 16.0),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 100.0,
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: NetworkImage(verticalList[0].image),
                          fit: BoxFit.cover)),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        verticalList[0].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 16.0),
                          width: MediaQuery.of(context).size.width - 180,
                          child: Text(
                            verticalList[0].subtitle,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ))
                      // Container(, child: Text(verticalList[0].subtitle))
                    ])
              ],
            ),
          ),
        ),
      ],
    );
  }
}
