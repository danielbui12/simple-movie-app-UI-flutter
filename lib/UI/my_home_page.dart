import 'package:app1/components/horizontalList.dart';
import 'package:app1/components/verticalMoviesList.dart';
import 'package:app1/model/button.dart';
import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              Button(
                title: "Recommend",
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
                    HorizontalList(),
                  ],
                ),
              ),
              Divider(thickness: 1.0),
              Button(
                title: "Hot 2019",
              ),
              Container(
                  height: 550.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      MoviesVerticalList(),
                      MoviesVerticalList(),
                      MoviesVerticalList(),
                    ],
                  )
                  // child: MoviesVerticalList(),
                  )
            ],
          ),
        ));
  }
}
