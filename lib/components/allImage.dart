import 'package:flutter/material.dart';

class ListImg extends StatelessWidget {
  final List poster;

  ListImg(this.poster);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 8.0,
        ),
        itemCount: poster.length,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            width: 100,
            margin: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 5.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(poster[index]), fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
