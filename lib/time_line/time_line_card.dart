import 'package:clone_instagram/storie/storie_icons.dart';

import 'package:flutter/material.dart';

class TimeLineCard extends StatefulWidget {
  final String title;
  const TimeLineCard({Key? key, required this.title}) : super(key: key);

  @override
  _TimeLineCardState createState() => _TimeLineCardState();
}

class _TimeLineCardState extends State<TimeLineCard> {
  int _likeCounter = 0;

  void _incrementCounter() {
    setState(() {
      _likeCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final boldText = TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                child: StoryIcon(title: '', isOnlyFans: false),
                width: 60,
              ),
              SizedBox(width: 10),
              Text(
                widget.title,
                style: boldText,
              ),
            ],
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.red,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  _incrementCounter();
                },
              ),
              IconButton(
                icon: Icon(Icons.add_comment_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
              SizedBox(width: 194),
              Icon(Icons.save_alt_sharp),
            ],
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('$_likeCounter curtidas', style: boldText),
            ),
          ),
        ],
      ),
    );
  }
}
