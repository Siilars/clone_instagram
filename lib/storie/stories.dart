import 'package:clone_instagram/storie/storie_icons.dart';
import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  List<String> stories = ['Teste1', 'Teste2', 'Teste3', 'Teste4', 'Teste5', 'Teste6', 'Teste7', 'Teste8'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10),
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final title = stories[index];
          return StoryIcon(
            title: title,
            isOnlyFans: index.isOdd,
          );
        },
      ),
    );
  }
}
