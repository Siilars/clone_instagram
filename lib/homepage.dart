import 'package:clone_instagram/conts/colors.dart';
import 'package:clone_instagram/conts/image.dart';
import 'package:clone_instagram/storie/stories.dart';
import 'package:clone_instagram/time_line/time_line.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Container(
        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            Stories(),
            Divider(),
            TimeLineClone(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('')),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ('')),
          BottomNavigationBarItem(icon: Icon(Icons.local_play_sharp), label: ('')),
          BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ('')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ('')),
        ],
      ),
    );
  }
}
