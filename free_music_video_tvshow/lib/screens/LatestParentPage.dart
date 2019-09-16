import 'package:flutter/material.dart';

class LatestParentPage extends StatelessWidget {
  const LatestParentPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              height: 50.0,
              child: TabBar(tabs: [
                Tab(
                  text: "24 Hours",
                ),
                Tab(
                  text: "7 Days",
                ),
                Tab(
                  text: "Weekly Chart",
                ),
                Tab(
                  text: "Monthly Chart",
                )
              ],
              isScrollable: true,),
            ),
            preferredSize: Size.fromHeight(50.0)),
        body: TabBarView(children: [
          Container(
            color: Colors.white,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.red,
          )
        ]),
      ),
    );
  }
}
