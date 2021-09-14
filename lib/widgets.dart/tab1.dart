import 'package:flutter/material.dart';
import 'package:technofest/widgets.dart/genreRow.dart';
import 'package:technofest/widgets.dart/movieItem.dart';

class PopularTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        MovieItem(),
        MovieItem(),
        MovieItem(),
        MovieItem(),
        MovieItem(),
        MovieItem(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        )
      ],
    );
  }
}
