import 'package:flutter/material.dart';
import 'package:technofest/widgets.dart/movieItem.dart';

class PopularTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MovieItem(),
        MovieItem(),
      ],
    );
  }
}
