import 'package:clone_instagram/storie/stories.dart';
import 'package:clone_instagram/time_line/time_line.dart';
import 'package:flutter/material.dart';

import 'conts/colors.dart';
import 'conts/image.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(
            AppImage.logo,
            height: 200,
            width: 150,
            color: AppColor.black,
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.add_box_outlined,
                color: AppColor.black,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.favorite_border, color: AppColor.black),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.mail_outline, color: AppColor.black),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(padding: EdgeInsets.only(left: 10, top: 10, right: 10), child: Stories()),
          Divider(),
          TimeLineClone(),
        ],
      ),
    );
  }
}
