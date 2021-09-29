import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clone_instagram/conts/colors.dart';
import 'package:clone_instagram/user/user_bio.dart';
import 'package:flutter/material.dart';

class UserPageInfo extends StatefulWidget {
  const UserPageInfo({Key? key}) : super(key: key);

  @override
  _UserPageInfoState createState() => _UserPageInfoState();
}

class _UserPageInfoState extends State<UserPageInfo> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: 80,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    width: 80,
                    height: 80,
                    imageUrl: image,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            UserNumbers(title: 'Publicações', numbers: '12'),
            UserNumbers(title: 'Seguidores', numbers: '120'),
            Container(
              child: UserNumbers(title: 'Seguindo', numbers: '125'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        UserBio(userName: 'Siilar', city: 'Goiania', userBio: 'Teste do Teste')
      ],
    );
  }
}

class UserNumbers extends StatelessWidget {
  final String title;
  final String numbers;
  const UserNumbers({Key? key, required this.title, required this.numbers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonText = TextStyle(fontSize: 14, color: AppColor.black);
    final numberText = TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColor.black);
    return Column(
      children: [
        Text(
          numbers,
          style: numberText,
        ),
        Text(
          title,
          style: buttonText,
        ),
      ],
    );
  }
}
