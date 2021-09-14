import 'package:flutter/material.dart';
import 'package:technofest/constants.dart';
import 'package:technofest/widgets.dart/tab1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(),
        backgroundColor: colBlue,
        appBar: AppBar(
          bottom: TabBar(
            indicatorWeight: 4,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 4.0,
                color: colOrange,
              ),
              insets: EdgeInsets.symmetric(
                horizontal: width * 0.2,
              ),
            ),
            indicatorColor: colOrange,
            unselectedLabelColor: Colors.grey,
            labelColor: colBlack,
            tabs: [
              Container(
                height: 30,
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  "New",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  "Upcoming",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: colBlue,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: colBlack,
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: colOrange,
                size: 25,
              ),
              onPressed: () {},
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: colOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "TO, Canada",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                PopularTab(),
                Center(),
                Center(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    color: colWhite,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Icon(
                              Icons.home,
                              color: colWhite,
                            ),
                            width: width * 0.2,
                            height: height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: colOrange,
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.bookmark_outline_rounded,
                              color: colBlack,
                            ),
                            width: width * 0.2,
                            height: height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.person_outline_rounded,
                              color: colBlack,
                            ),
                            width: width * 0.2,
                            height: height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
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
        ),
      ),
    );
  }
}
