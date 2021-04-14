import 'package:demo_control_line/resourse/app_drawable.dart';
import 'package:flutter/material.dart';

import 'widgets/background_widget.dart';

class DemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoPage();
}

class _DemoPage extends State<DemoPage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

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
