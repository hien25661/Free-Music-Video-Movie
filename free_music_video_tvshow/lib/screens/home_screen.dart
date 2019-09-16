import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var tabBarView = TabBarView(children: [
      Container(color: Colors.orange),
      Container(color: Colors.lightGreen),
      Container(color: Colors.red),
      Container(color: Colors.yellow),
      Container(color: Colors.black38),
    ]);

    var header = AppBar(
      centerTitle: true,
      title: Text("Title"),
      textTheme:
          TextTheme(title: TextStyle(fontSize: 20.0, color: Colors.white)),
      backgroundColor: Colors.blueAccent,
      leading: GestureDetector(
        onTap: () {
          print("Setting Page");
        },
        child: Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        GestureDetector(
            onTap: () {
              print("Search Page");
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.search, color: Colors.white),
            ))
      ],
    );
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: header,
          body: tabBarView,
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.rss_feed),
                text: "Latest",
              ),
              Tab(
                icon: new Icon(Icons.trending_up),
                text: "Trending",
              ),
              Tab(
                icon: new Icon(Icons.people),
                text: "Artist",
              ),
              Tab(
                icon: new Icon(Icons.map),
                text: "Country",
              ),
              Tab(
                icon: new Icon(Icons.folder),
                text: "Top List",
              )
            ],
            labelColor: Colors.red,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.red,
            labelStyle: TextStyle(fontSize: 12.0),
          ),
        ));
  }
}
