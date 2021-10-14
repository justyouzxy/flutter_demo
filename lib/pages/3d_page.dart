import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/assets_util.dart';
import 'package:flutter_demo/widgets/interactional/flutter_interactional_widget.dart';

class Image3DPage extends StatefulWidget {
  const Image3DPage({Key key}) : super(key: key);

  @override
  _Image3DPageState createState() => _Image3DPageState();
}

class _Image3DPageState extends State<Image3DPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractionalWidget(
        maxAngleX: 30,
        maxAngleY: 80,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        middleScale: 1,
        foregroundScale: 1.1,
        backgroundScale: 1.1,
        backgroundWidget: backgroundWidget(),
        middleWidget: middleWidget(),
        foregroundWidget: foregroundWidget(),
      ),
    );
  }

  Widget backgroundWidget() {
    return Container(
      child: getImage(Assets.back),
    );
  }

  Widget foregroundWidget() {
    return Container(
      child: getImage(Assets.fore),
    );
  }

  Widget middleWidget() {
    // return Center(child: Text('hello'));
    return Container(
      child: getImage(Assets.mid),
    );
  }

  Image getImage(String s) {
    return Image.asset(
      s,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.cover,
      scale: 3.0,
    );
  }
}
