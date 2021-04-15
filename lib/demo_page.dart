import 'package:demo_control_line/resourse/app_drawable.dart';
import 'package:flutter/material.dart';

import 'widgets/background_widget.dart';

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoPage();
}

class _DemoPage extends State<DemoPage> with SingleTickerProviderStateMixin {
  final scrollController = ScrollController();
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 5000));
    _animation = Tween(begin: 0.0,end: 1.0).animate(_controller)
      ..addListener((){
        setState(() {
        });
      });
    _controller.forward();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          alignment: Alignment.topRight,
          child: Image.asset(AppDrawable.bg_app_bar),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: BackgroundWidget(),
      ),
    );
  }
}
