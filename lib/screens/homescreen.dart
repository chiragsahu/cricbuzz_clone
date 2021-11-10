import 'package:cricbuzz_clone/screens/homepage.dart';
import 'package:cricbuzz_clone/screens/matchespage.dart';
import 'package:cricbuzz_clone/screens/morepage.dart';
import 'package:cricbuzz_clone/screens/newspage.dart';
import 'package:cricbuzz_clone/screens/videospage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MatchesPage(),
    VideosPage(),
    NewsPage(),
    MorePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedFontSize: 14.5,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_cricket), label: 'Matches'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: 'More')
        ],
      ),
    );
  }
}
