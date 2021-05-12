import 'package:flutter/material.dart';
import 'package:mixa/utils/models/mix.dart';
import 'package:toast/toast.dart';

class HomeDetail extends StatelessWidget {
  final Mix mix;

  HomeDetail({Key key, this.mix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var top = SizedBox(
      height: 80.0,
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
              padding: const EdgeInsets.only(left: 20.0),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ))),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
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
    var albumArt = SizedBox(
        height: 200.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://iisy.fi/wp-content/uploads/2018/08/user-profile-male-logo.jpg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black26, BlendMode.darken)),
                color: Colors.grey,
              ),
            )
          ],
        ));
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [albumArt],
            ),
          ),
        )
      ]),
    );
  }
}
