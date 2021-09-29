import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/conts/colors.dart';
import 'package:flutter/material.dart';

class TimeLineIcon extends StatefulWidget {
  final String title;
  final bool icon;

  const TimeLineIcon({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  _TimeLineIconState createState() => _TimeLineIconState();
}

class _TimeLineIconState extends State<TimeLineIcon> {
  late final image;
  @override
  void initState() {
    super.initState();
    int randomImageIndex = Random().nextInt(50);
    image = 'https://picsum.photos/id/$randomImageIndex/200/300';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: widget.icon ? [AppColor.lemon, AppColor.lemon] : [AppColor.pink, AppColor.orange],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
