// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DividerWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool isHorizontal;
  final Color? color;

  const DividerWidget({
    Key? key,
    this.height = 1,
    this.width = 1,
    this.isHorizontal = true,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
      height: !isHorizontal ? Get.height : height,
      width: isHorizontal ? Get.width : width,
      color: color ?? Colors.grey[200],
    );
  }
}
