import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/tabbar1_page.dart';
import 'package:flutter_demo/pages/tabbar_detail.dart';
import 'package:flutter_demo/widgets/tabbar/gs_tab_widget.dart';
import 'package:flutter_demo/widgets/tabbar/gs_top_tabbar_widget.dart';
import 'package:get/get.dart';

class TabbarPage extends StatefulWidget {
  static const routeName = "/TabbarPage";
  const TabbarPage({Key key}) : super(key: key);

  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  List<Widget> list = [
    Tab(child: Text("告警列表")),
    Tab(child: Text("事件")),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tabbar"),
        ),
        body: Column(
          children: [
            GSTabWidget(
              tabList: list,
            ),
            GSTopTabWidget(
              tabList: list,
            ),
            TabBar(
              tabs: list,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
            ),
            Container(
              height: 200,
              child: TabBarView(children: [
                TabbarDetail(
                  centent: "告警列表",
                ),
                TabbarDetail(
                  centent: "事件",
                )
              ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Tabbar1Page.routeName);
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
