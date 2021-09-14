import 'package:flutter/material.dart';
import 'package:technofest/constants.dart';

class GenreRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.065,
        ),
        GenreItem(
          title: "Action",
          index: 0,
        ),
        GenreItem(
          title: "Drama",
          index: 1,
        ),
        GenreItem(
          title: "Horror",
          index: 2,
        ),
      ],
    );
  }
}

class GenreItem extends StatelessWidget {
  GenreItem({this.title, this.index});
  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.fromLTRB(0, width * 0.06, width * 0.05, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      elevation: 20,
      child: Container(
        height: height * 0.05,
        width: width * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: index == 0 ? colOrange : colWhite,
        ),
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(
              color: index == 0 ? colWhite : colBlack,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
