import 'package:flutter/material.dart';
import 'package:mixa/utils/ui/placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceHolderWidget(Colors.green),
    PlaceHolderWidget(Colors.amber),
    PlaceHolderWidget(Colors.black)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mixa'),
      ),
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
            icon: new Icon(Icons.notifications), title: Text('Notifications')),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text('Favorites')),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}