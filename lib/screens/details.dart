import 'package:flutter/material.dart';
import 'package:technofest/constants.dart';
import 'package:technofest/widgets.dart/castCard.dart';

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
                expandedHeight: width * 0.42,
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
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: width * 0.35,
                    margin:
                        EdgeInsets.fromLTRB(width * 0.07, width * 0.3, 0, 0),
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
                    width: width * 0.45,
                    height: width * 0.37,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Guardians of the Galaxy Vol. 2",
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
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: height * 0.01,
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      width * 0.07, width * 0.07, width * 0.07, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Plot Summary",
                        style: TextStyle(
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: width * 0.05,
                      ),
                      Text(
                        "The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord's encounter with his father the ambitious celestial being Ego.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: height * 0.01,
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      width * 0.07, width * 0.07, width * 0.07, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cast and Crew",
                            style: TextStyle(
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            textColor: colOrange,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width * 0.01,
                      ),
                      Row(
                        children: [
                          CastCard(
                            height: height,
                            width: width,
                            imgLink:
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Chris_Pratt_2018.jpg/800px-Chris_Pratt_2018.jpg",
                            name: "Christ Pratt",
                          ),
                          CastCard(
                            height: height,
                            width: width,
                            imgLink:
                                "https://media.glamour.com/photos/5695817b5fff94d44eec4381/master/w_1600,c_limit/entertainment-2015-06-zoe-saldana-getty-main.jpg",
                            name: 'Zoe Saldana',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.86,
                      child: Center(
                        child: Text(
                          "Buy Tickets",
                          style: TextStyle(
                            color: colWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: colOrange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
