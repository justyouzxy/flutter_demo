import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/index.dart';

import 'custom_tab_widget.dart';

class GSTabWidget extends StatelessWidget {
  final List tabList;
  final Color bgColor;
  final Color selectLabelColor;
  final Color unselectLabelColor;
  final Color indicatorColor;

  ///tabbar的高度，正常页面130.sp。在appbar上的需要修改
  final double height;

  GSTabWidget({
    Key key,
    this.tabList,
    this.bgColor,
    this.indicatorColor,
    this.selectLabelColor,
    this.unselectLabelColor,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: bgColor ?? Colors.white,
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: CustomTabBarWidget(
          height: height ?? 65,
          isScrollable: true,
          labelColor: selectLabelColor ?? GsColors.black,
          unselectedLabelColor: unselectLabelColor ?? Color(0xff666666),
          labelStyle: TextStyle(fontSize: 23, fontWeight: GsFontWeight.medium),
          unselectedLabelStyle: TextStyle(fontSize: 22, fontWeight: GsFontWeight.regular),
          indicatorWeight: 6,
          indicatorColor: indicatorColor ?? GsColors.blueMain,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: tabList,
        ),
      ),
    );
  }
}
