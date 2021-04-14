import 'package:demo_control_line/resourse/app_drawable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(AppDrawable.bg,
            width: MediaQuery.of(context).size.width, fit: BoxFit.fitWidth),
        Padding(
          padding: const EdgeInsets.only(bottom: 39),
          child: SvgPicture.asset(AppDrawable.btn_start),
        )
      ],
    );
  }
}
