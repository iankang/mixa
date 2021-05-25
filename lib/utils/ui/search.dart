import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: GridView.extent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1.9,
          children: <Widget>[
            Container(
              height: 10,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 10,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 10,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 10,
              width: 100,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
