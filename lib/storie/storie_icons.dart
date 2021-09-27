import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/conts/colors.dart';
import 'package:flutter/material.dart';

class StoryIcon extends StatelessWidget {
  final String title;
  final bool isOnlyFans;

  const StoryIcon({Key? key, required this.title, required this.isOnlyFans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int randomImageIndex = Random().nextInt(50);
    final image = 'https://picsum.photos/id/$randomImageIndex/200/300';
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: isOnlyFans ? [AppColor.lemon, AppColor.lemon] : [AppColor.pink, AppColor.orange],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                height: 55,
                width: 55,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(color: isOnlyFans ? AppColor.grey : AppColor.black),
        ),
      ],
    );
  }
}
