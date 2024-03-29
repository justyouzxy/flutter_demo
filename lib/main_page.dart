import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/3d_page.dart';
import 'package:flutter_demo/pages/animation_page.dart';
import 'package:flutter_demo/pages/switch_page.dart';
import 'package:flutter_demo/pages/tabbar_page.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  static const routeName = "/MainPage";
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List list = [
    "switch",
    "滑块",
    "tabbar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Column(
        children: [
          itemView("switch", () {
            Get.to(SwitchPage());
          }),
          itemView("tabbar", () {
            Get.to(TabbarPage());
          }),
          itemView("动画", () {
            Get.to(AnimationPage());
          }),
          itemView("3d陀螺仪", () {
            Get.to(Image3DPage());
          }),
        ],
      ),
    );
  }

  Widget itemView(String title, Function func) {
    return GestureDetector(
      child: Container(
        height: 44,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.4)))),
        child: Text(title),
      ),
      onTap: func,
    );
  }
}
