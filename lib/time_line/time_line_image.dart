import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class TimeLineImage extends StatefulWidget {
  const TimeLineImage({Key? key}) : super(key: key);

  @override
  _TimeLineImageState createState() => _TimeLineImageState();
}

class _TimeLineImageState extends State<TimeLineImage> {
  late final image;
  @override
  void initState() {
    int randomImageIndex = Random().nextInt(50);
    image = 'https://picsum.photos/id/$randomImageIndex/200/300';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: CachedNetworkImage(
        height: 250,
        fit: BoxFit.fill,
        imageUrl: image,
      ),
    );
  }
}
