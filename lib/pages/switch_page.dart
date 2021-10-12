import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/custom_switch/m_switch_widget.dart';
import 'package:get/get.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key key}) : super(key: key);

  @override
  _SwitchPageState createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  final status = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("switch"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return CupertinoSwitch(
                  value: status.value,
                  onChanged: (v) {
                    status.value = v;
                  });
            }),
            Obx(() {
              return MCupertinoSwitch(
                  value: status.value,
                  onChanged: (v) {
                    status.value = v;
                  });
            })
          ],
        ),
      ),
    );
  }
}
