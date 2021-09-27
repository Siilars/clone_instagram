import 'package:clone_instagram/time_line/time_line_card.dart';
import 'package:flutter/material.dart';

class TimeLineClone extends StatefulWidget {
  const TimeLineClone({Key? key}) : super(key: key);

  @override
  _TimeLineCloneState createState() => _TimeLineCloneState();
}

class _TimeLineCloneState extends State<TimeLineClone> {
  List<String> userName = ['Vanderlan', 'Rodrigo', 'Julia', 'Richard', 'Sofia', 'Natalia', 'Priscila', 'Honda'];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10),
        itemCount: userName.length,
        itemBuilder: (context, index) {
          final title = userName[index];
          return TimeLineCard(
            title: title,
          );
        },
      ),
    );
  }
}
