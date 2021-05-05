import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:mixa/utils/models/mix.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SearchBar searchBar;
  List<Mix> _dancehall;
  List<Mix> _pop;
  List<Mix> _bongo;

  @override
  void initState() {
    super.initState();
    _populateData();
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      title: new Text('search for mixes'),
      actions: [searchBar.getSearchAction(context)],
    );
  }

  _HomePageState() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar);
    _populateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchBar.build(context),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildDancehallListView(),
            ],
          ))
        ],
      ),
    );
  }

  void _populateData() {
    _dancehall = <Mix>[
      Mix(
          mixName: 'dancehall',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
      Mix(
          mixName: 'dancehall1',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
      Mix(
          mixName: 'dancehall2',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
    ];
    _pop = <Mix>[
      Mix(
          mixName: 'pop',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
      Mix(
          mixName: 'pop1',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
      Mix(
          mixName: 'pop2',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
    ];
    _bongo = <Mix>[
      Mix(
          mixName: 'bongo',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
      Mix(
          mixName: 'bongo1',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
      Mix(
          mixName: 'bongo2',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://image.tmdb.org/t/p/original/wwemzKWzjKYJFfCeiB57q3r4Bcm.png',
          mixLength: 24000),
    ];
  }

  SizedBox _buildDancehallListView() {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemExtent: 100.0,
          itemBuilder: (context, index) {
            var item = _dancehall[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        item.albumArt,
                      ),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black26, BlendMode.darken)),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://iisy.fi/wp-content/uploads/2018/08/user-profile-male-logo.jpg',
                          ),
                          radius: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.mixName,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
