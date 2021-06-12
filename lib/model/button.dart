import 'package:app1/Screen/allMovies.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;

  const Button({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          FlatButton(
              child: Text("View all"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllMovies()));
              })
        ],
      ),
    );
  }
}
