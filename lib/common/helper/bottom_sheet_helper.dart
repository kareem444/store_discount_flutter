import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetHelper {
  static void show(
    BuildContext context, {
    Widget child = const SizedBox(),
    String? title,
    double? height,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: height != null ? true : false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            height: height != null ? Get.height * (height) : null,
            width: double.infinity,
            child: Column(children: [
              Container(
                width: 50,
                height: 5,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              if (title != null) ...{
                Text(
                  title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 10),
              },
              Expanded(child: child),
            ]),
          ),
        );
      },
    );
  }
}
