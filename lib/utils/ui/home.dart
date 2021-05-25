import 'package:flutter/material.dart';
import 'package:mixa/utils/ui/home_page.dart';
import 'package:mixa/utils/ui/search.dart';
import 'package:mixa/utils/ui/placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Search(),
    PlaceHolderWidget(Colors.black)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
            icon: new Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(
            icon: new Icon(Icons.search), title: Text('Search')),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music), title: Text('Library')),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
