import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  final String icon;
  final String checked;
  final bool isChecked;

  PointWidget(
      {required this.icon, required this.checked, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return Image.asset(isChecked ? checked : icon);
  }
}
