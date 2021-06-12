import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List movieHorizontal = [
    MovieHorizontal.name("Iron Man 3",
        "https://afamilycdn.com/k:thumb_w/600/Tnk9vRlUgEMOa9xiFyoQdi0bvg9Omj/Image/2013/05/iron-man-3-poster-364ac/iron-man-3-cau-chuyen-dang-sau-bo-giap-sat-.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () => {
          // Navigator.push(context, MaterialPageRoute(builder: (context) =>))
        },
        child: Column(
          children: <Widget>[
            Card(
              elevation: 20.0,
              child: Container(
                height: 200.0,
                width: 160.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                        image: NetworkImage(movieHorizontal[0].image),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(
                movieHorizontal[0].title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
