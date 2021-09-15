import 'package:flutter/material.dart';

class CastCard extends StatelessWidget {
  CastCard({
    this.width,
    this.height,
    this.imgLink,
    this.name,
  });
  double width;
  double height;
  String imgLink;
  String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Container(
        width: width * 0.4,
        height: height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: height * 0.06,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgLink,
                ),
              ),
            ),
            Container(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              width: width * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
