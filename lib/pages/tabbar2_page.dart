import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tabbar3_page.dart';

class Tabbar2Page extends StatefulWidget {
  static const routeName = "/Tabbar2Page";

  const Tabbar2Page({Key key}) : super(key: key);

  @override
  _Tabbar2PageState createState() => _Tabbar2PageState();
}

class _Tabbar2PageState extends State<Tabbar2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabar2"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Tabbar3Page.routeName);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
