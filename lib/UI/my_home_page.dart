import 'package:app1/components/horizontalList.dart';
import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';
import '../Screen/allMovies.dart';

class Movies extends StatelessWidget {
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
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Recommend",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  FlatButton(
                      child: Text("View all"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllMovies()));
                      })
                ],
              ),
            ),
            Container(
              height: 260.0,
              margin: const EdgeInsets.only(top: 16.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList(),
                  HorizontalList()
                ],
              ),
            )
          ],
        ));
  }
}
