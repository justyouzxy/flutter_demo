import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/tabbar1_page.dart';
import 'package:get/get.dart';

class Tabbar3Page extends StatefulWidget {
  static const routeName = "/Tabbar3Page";

  const Tabbar3Page({Key key}) : super(key: key);

  @override
  _Tabbar3PageState createState() => _Tabbar3PageState();
}

class _Tabbar3PageState extends State<Tabbar3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tabar3"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popUntil(Get.context, (r) {
            print(r);
            if (r.settings.name == Tabbar1Page.routeName) {
              (Get.arguments as Map).assign("key", true);
              return true;
            }
            return false;
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
