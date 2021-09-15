import 'package:flutter/material.dart';
import 'package:technofest/constants.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                snap: false,
                pinned: false,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(),
                expandedHeight: width * 0.48,
                backgroundColor: colOrange,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  tooltip: 'Menu',
                  onPressed: () {},
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.bookmark_border_outlined,
                    ),
                    tooltip: 'Comment Icon',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: width * 0.32,
                    margin:
                        EdgeInsets.fromLTRB(width * 0.07, width * 0.42, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_SX300.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    width: width * 0.55,
                    height: width * 0.32,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gardianlwf2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width * 0.05),
                        ),
                        Text(
                          "Director: Soumya ",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Runtime: 1h 40m",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Animation, Action",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: height * 0.02,
                              color: colOrange,
                            ),
                            SizedBox(
                              width: width * 0.005,
                            ),
                            Text(
                              "7.6",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
