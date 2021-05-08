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
              _buildCardListView(),
              _buildRequestListView()
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
              'https://images.pexels.com/photos/1626481/pexels-photo-1626481.jpeg?cs=srgb&dl=pexels-stas-knop-1626481.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'dancehall'),
      Mix(
          mixName: 'dancehall1',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?cs=srgb&dl=pexels-snapwire-6966.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'dancehall'),
      Mix(
          mixName: 'dancehall2',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?cs=srgb&dl=pexels-vishnu-r-nair-1105666.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'dancehall'),
    ];
    _pop = <Mix>[
      Mix(
          mixName: 'pop',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/96380/pexels-photo-96380.jpeg?cs=srgb&dl=pexels-freestocksorg-96380.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'pop'),
      Mix(
          mixName: 'pop1',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/167092/pexels-photo-167092.jpeg?cs=srgb&dl=pexels-miguel-%C3%A1-padri%C3%B1%C3%A1n-167092.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'pop'),
      Mix(
          mixName: 'pop2',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/1389429/pexels-photo-1389429.jpeg?cs=srgb&dl=pexels-elviss-railijs-bit%C4%81ns-1389429.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'pop'),
    ];
    _bongo = <Mix>[
      Mix(
          mixName: 'bongo',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/675960/mic-music-sound-singer-675960.jpeg?cs=srgb&dl=pexels-skitterphoto-675960.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'bongo'),
      Mix(
          mixName: 'bongo1',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/1337753/pexels-photo-1337753.jpeg?cs=srgb&dl=pexels-vlad-bagacian-1337753.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'bongo'),
      Mix(
          mixName: 'bongo2',
          dj: 'bien',
          mixUrl:
              'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3',
          albumArt:
              'https://images.pexels.com/photos/63703/pexels-photo-63703.jpeg?cs=srgb&dl=pexels-stephen-niemeier-63703.jpg&fm=jpg',
          mixLength: 24000,
          genre: 'bongo'),
    ];
  }

  SizedBox _buildDancehallListView() {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _dancehall.length,
          itemExtent: 100.0,
          itemBuilder: (context, index) {
            // if (index == 0) {
            //   return new Text(
            //     'dancehall',
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   );
            // }
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

  Widget _buildCardListView() {
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _pop.length,
        itemExtent: 200.0,
        itemBuilder: (context, index) {
          var item = _pop[index];
          return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            item.albumArt,
                          ),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black26, BlendMode.darken)),
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text(item.mixName),
                  subtitle: Text(
                    item.mixUrl,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Icon(
                    Icons.play_arrow,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildRequestListView() {
    return SizedBox(
        height: 250.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _bongo.length,
          itemExtent: 240.0,
          itemBuilder: (context, index) {
            var item = _bongo[index];
            return Card(
              elevation: 4.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(item.albumArt),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black26, BlendMode.darken),
                          ),
                          color: Colors.grey),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                item.mixName,
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(child: Text('Reject'), onPressed: () {}),
                      RaisedButton(
                        child: Text('Accept'),
                        onPressed: () {},
                        color: Colors.blue,
                        textColor: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
