import 'package:clone_instagram/conts/colors.dart';

import 'package:clone_instagram/user/user_fav_stories.dart';
import 'package:clone_instagram/user/user_grid_pics.dart';
import 'package:clone_instagram/user/user_page_info.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'User_Siilar',
            style: TextStyle(color: AppColor.black),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: AppColor.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.list_sharp,
                    color: AppColor.black,
                  ))
            ],
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        children: [
          UserPageInfo(),
          UserFavStory(title: 'My Stories', border: false),
          Divider(),
          GridPictures(),
          //TabBarUser(),
        ],
      ),
    );
  }
}
