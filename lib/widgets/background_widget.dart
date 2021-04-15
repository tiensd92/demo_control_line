import 'package:demo_control_line/resourse/app_drawable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resourse/app_drawable.dart';
import 'road_path.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(AppDrawable.bg,
            width: MediaQuery.of(context).size.width, fit: BoxFit.fitWidth),
        Positioned(
            child: Padding(
              padding: const EdgeInsets.only(right: 42),
              child: RoadPath(width: 127, step: 2,),
            ),
            bottom: 68),
        Padding(
          padding: const EdgeInsets.only(bottom: 39),
          child: SvgPicture.asset(AppDrawable.btn_start),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Image.asset(AppDrawable.ic_point_blue),
          ),
          bottom: 160,
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(right: 42),
            child: Image.asset(AppDrawable.ic_point_green),
          ),
          bottom: 226,
        )
      ],
    );
  }
}
