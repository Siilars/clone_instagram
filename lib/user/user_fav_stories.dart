import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/conts/colors.dart';
import 'package:flutter/material.dart';

class UserFavStory extends StatelessWidget {
  final String title;
  final bool border;

  const UserFavStory({Key? key, required this.title, required this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int randomImageIndex = Random().nextInt(50);
    final image = 'https://picsum.photos/id/$randomImageIndex/200/300';
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: border ? [AppColor.lemon, AppColor.lemon] : [AppColor.pink, AppColor.orange],
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
              style: TextStyle(color: border ? AppColor.grey : AppColor.black),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.add_circle_outline,
          size: 40,
        ),
      ],
    );
  }
}
