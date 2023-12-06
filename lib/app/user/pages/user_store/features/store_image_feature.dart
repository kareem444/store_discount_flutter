import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreImageFeature extends StatelessWidget {
  const StoreImageFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          "store image",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
