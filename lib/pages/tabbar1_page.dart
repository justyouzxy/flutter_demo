import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tabbar2_page.dart';

class Tabbar1Page extends StatefulWidget {
  static const routeName = "/Tabbar1Page";
  const Tabbar1Page({Key key}) : super(key: key);

  @override
  _Tabbar1PageState createState() => _Tabbar1PageState();
}

class _Tabbar1PageState extends State<Tabbar1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabar1"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Tabbar2Page.routeName, arguments: Map()).then((value) {
            print("这里是返回的数据=${Get.arguments}");
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
