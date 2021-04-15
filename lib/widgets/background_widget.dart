import 'package:demo_control_line/resourse/app_drawable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resourse/app_drawable.dart';
import 'point_widget.dart';
import 'package:path_drawing/path_drawing.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(AppDrawable.bg,
            width: MediaQuery.of(context).size.width, fit: BoxFit.fitWidth),
        Positioned(
            child: SizedBox(
              width: 127,
              child: SvgPicture.asset(AppDrawable.img_road),
            ),
            bottom: 68),
        Padding(
          padding: const EdgeInsets.only(bottom: 39, left: 42),
          child: SvgPicture.asset(AppDrawable.btn_start),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(right: 176),
            child: PointWidget(
                icon: AppDrawable.ic_point_blue,
                checked: AppDrawable.ic_point_blue_checked),
          ),
          bottom: 164,
        ),
        Positioned(
          child: PointWidget(
            icon: AppDrawable.ic_point_green,
            checked: AppDrawable.ic_point_green_checked,
          ),
          bottom: 228,
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.only(left: 176),
            child: PointWidget(
              icon: AppDrawable.ic_point_violet,
              checked: AppDrawable.ic_point_violet_checked,
            ),
          ),
          bottom: 266,
        ),
        Positioned(
          child: PointWidget(
            icon: AppDrawable.ic_point_orange,
            checked: AppDrawable.ic_point_orange_checked,
          ),
          bottom: 326,
        ),
      ],
    );
  }
}
