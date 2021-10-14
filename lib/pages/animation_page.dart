import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/assets_util.dart';
import 'package:flutter_demo/widgets/animation/circle_rotate_widget.dart';
import 'package:get/get.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Colors.blueAccent,
      body: Container(
          height: 500,
          width: 500,
          color: Colors.blueAccent,
          child: CircleRotateWidget(
            size: Size(300, 300),
            imageWidth: 100,
            childWidget: Container(
              height: 100,
              width: 100,
              child: Image.asset(Assets.gs_shake_hand),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AnimationPage());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
