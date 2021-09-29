import 'package:clone_instagram/home_controller.dart';
import 'package:clone_instagram/home_tab.dart';
import 'package:clone_instagram/user/user_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RxBuilder(builder: (context) {
        late Widget body;
        if (_homeController.tabIndex.value == 0) {
          body = HomeTab();
        } else if (_homeController.tabIndex.value == 4) {
          body = UserPage();
        } else {
          body = Text('Page invalid');
        }

        return body;
      }),
      bottomNavigationBar: RxBuilder(
        builder: (context) {
          return BottomNavigationBar(
            currentIndex: _homeController.tabIndex.value,
            onTap: (value) {
              _homeController.setTabIndex(value);
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ('')),
              BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ('')),
              BottomNavigationBarItem(icon: Icon(Icons.local_play_sharp), label: ('')),
              BottomNavigationBarItem(icon: Icon(Icons.shop_outlined), label: ('')),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ('')),
            ],
          );
        },
      ),
    );
  }
}
