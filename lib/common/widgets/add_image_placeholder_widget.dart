import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddImagePlaceholderWidget extends StatelessWidget {
  const AddImagePlaceholderWidget({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.add_photo_alternate_outlined,
          size: Get.width * 0.2,
          color: Colors.white,
        ),
      ),
    );
  }
}
