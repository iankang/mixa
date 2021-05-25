import 'package:flutter/material.dart';
import 'package:mixa/utils/models/mix.dart';
import 'package:seekbar/seekbar.dart';
import 'dart:async';

import 'package:toast/toast.dart';

class HomeDetail extends StatelessWidget {
  final Mix mix;

  HomeDetail({Key key, this.mix}) : super(key: key);

  double _value = 0.0;
  double _secondValue = 0.0;

  Timer _progressTimer;
  Timer _secondProgressTimer;

  bool _done = false;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    var top = SizedBox(
      height: 40.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //      Container(
          //   padding: EdgeInsets.all(10.0),
          //   height: MediaQuery.of(context).size.height,
          //   decoration: new BoxDecoration(
          //       image: new DecorationImage(
          //           image: NetworkImage(mix.albumArt), fit: BoxFit.cover)),
          // ),
          Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ))),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://iisy.fi/wp-content/uploads/2018/08/user-profile-male-logo.jpg',
              ),
              radius: 14.0,
            ),
          ),
        ],
      ),
    );

    var albumImage = Expanded(
        child: Padding(
      padding: const EdgeInsets.all(64),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(mix.albumArt), fit: BoxFit.cover),
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12)),
      ),
    ));
    var songTitle = Container(
      padding: EdgeInsets.all(4),
      child: Column(
        children: [
          Text(
            mix.mixName,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Text(
            mix.dj,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
    var seeking = Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
      alignment: Alignment.center,
      child: SeekBar(
        value: _value,
        secondValue: _secondValue,
        barColor: Colors.blue,
        progressColor: Colors.blue,
        secondProgressColor: Colors.blue.withOpacity(0.5),
        onStartTrackingTouch: () {
          Toast.show("startTrackingTouch", context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        },
        onProgressChanged: (value) {
          Toast.show('onProgressChanged: $value', context,
              duration: Toast.LENGTH_SHORT);
        },
        onStopTrackingTouch: (value) {
          Toast.show('onStopTrackingTouch: $value', context,
              duration: Toast.LENGTH_SHORT);
        },
      ),
    );
    var organizationOperations = SizedBox(
      height: 40.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
              child: InkWell(
                  onTap: () {
                    Toast.show("repeat", context, duration: Toast.LENGTH_SHORT);
                  },
                  child: Icon(
                    Icons.repeat,
                    color: Colors.black,
                  ))),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
              child: InkWell(
                onTap: () {
                  Toast.show('playlist', context, duration: Toast.LENGTH_SHORT);
                },
                child: Icon(Icons.playlist_add_outlined),
              )),
        ],
      ),
    );
    var player = Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTap: () {
                    Toast.show('back', context, duration: Toast.LENGTH_SHORT);
                  },
                  child: Icon(
                    Icons.skip_previous,
                    size: 24.0,
                  ),
                ),
              )),
          Container(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Toast.show('play', context, duration: Toast.LENGTH_SHORT);
              },
              child: Icon(
                Icons.play_arrow,
                size: 36.0,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: InkWell(
                  onTap: () {
                    Toast.show('next', context, duration: Toast.LENGTH_SHORT);
                  },
                  child: Icon(
                    Icons.skip_next,
                    size: 24.0,
                  ))),
        ],
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: <Widget>[
            top,
            albumImage,
            songTitle,
            seeking,
            organizationOperations,
            player
          ],
        ),
      ),
    );
  }
}
