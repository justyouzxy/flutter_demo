import 'package:flutter/material.dart';

class TabbarDetail extends StatefulWidget {
  final String centent;

  const TabbarDetail({Key key, this.centent}) : super(key: key);

  @override
  _TabbarDetailState createState() => _TabbarDetailState();
}

class _TabbarDetailState extends State<TabbarDetail> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.centent),
    );
  }
}
