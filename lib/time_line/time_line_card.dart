import 'package:clone_instagram/time_line/time_line_icon.dart';
import 'package:clone_instagram/time_line/time_line_image.dart';

import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class TimeLineCard extends StatefulWidget {
  final String title;
  const TimeLineCard({Key? key, required this.title}) : super(key: key);

  @override
  _TimeLineCardState createState() => _TimeLineCardState();
}

class _TimeLineCardState extends State<TimeLineCard> {
  final _likeCounter = RxNotifier<int>(0);

  void _incrementCounter() {
    _likeCounter.value++;
  }

  @override
  Widget build(BuildContext context) {
    final boldText = TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: Row(
            children: [
              SizedBox(
                child: TimeLineIcon(title: '', icon: false),
                width: 60,
              ),
              // SizedBox(width: 10),
              Text(
                widget.title,
                style: boldText,
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: TimeLineImage(),
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
          padding: EdgeInsets.only(left: 10, bottom: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RxBuilder(
              builder: (context) {
                return Text('${_likeCounter.value} curtidas', style: boldText);
              },
            ),
          ),
        ),
      ],
    );
  }
}
