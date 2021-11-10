import 'package:cricbuzz_clone/widget/homewidgets/featuretab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("CRICBUZZ"),
            bottom: TabBar(tabs: [
              Tab(
                text: "FEATURED",
              ),
              Tab(
                text: "CRICBUZZ PLUS",
              )
            ]),
          ),
          body: TabBarView(children: [ FeaturedTab(),Text("FEATURED VIDEOS")]),
        ));
  }
}
