import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/index.dart';

class GSTopTabWidget extends StatelessWidget {
  final List tabList;
  final EdgeInsetsGeometry margin;

  GSTopTabWidget({
    Key key,
    this.tabList,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: margin != null ? margin : EdgeInsets.symmetric(vertical: 19, horizontal: 22),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(23), color: GsColors.gray10),
      child: TabBar(
        tabs: tabList,
        indicatorColor: Colors.white,
        indicatorWeight: 0,
        indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            border: Border.all(width: 5, color: GsColors.gray10)),
        labelColor: GsColors.blue,
        unselectedLabelColor: GsColors.black,
        labelStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: GsFontSize.sp_36,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: GsFontSize.sp_36,
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
