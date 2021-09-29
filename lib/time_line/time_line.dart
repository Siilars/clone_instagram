import 'package:clone_instagram/time_line/time_line_card.dart';
import 'package:flutter/material.dart';

class TimeLineClone extends StatefulWidget {
  const TimeLineClone({Key? key}) : super(key: key);

  @override
  _TimeLineCloneState createState() => _TimeLineCloneState();
}

class _TimeLineCloneState extends State<TimeLineClone> with AutomaticKeepAliveClientMixin {
  late List<String> userName;
  late final scrollController;
  @override
  void initState() {
    userName = ['Vanderlan', 'Rodrigo', 'Julia', 'Richard', 'Sofia', 'Natalia', 'Priscila', 'Honda'];
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Expanded(
      child: ListView.separated(
        controller: scrollController,
        addAutomaticKeepAlives: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 30),
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

  @override
  bool get wantKeepAlive => true;
}
