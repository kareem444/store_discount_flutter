import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDialogHelper {
  static void show(
    BuildContext context, {
    String title = '',
    String middleText = '',
    String? confirmText,
    Color? confirmTextColor = Colors.black54,
    Function()? onConfirm,
  }) {
    Get.defaultDialog(
      title: title,
      middleText: middleText,
      titleStyle: Theme.of(context).textTheme.headlineLarge,
      middleTextStyle: Theme.of(context).textTheme.headlineMedium,
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.all(15),
      titlePadding: const EdgeInsets.symmetric(vertical: 15),
      confirm: confirmText != null
          ? TextButton(
              onPressed: onConfirm,
              child: Text(
                confirmText,
                style: TextStyle(
                  color: confirmTextColor,
                  fontSize: 18,
                ),
              ),
            )
          : null,
      cancel: TextButton(
        onPressed: () {
          Get.back();
        },
        child: const Text(
          "Cancel",
          style: TextStyle(color: Colors.black54, fontSize: 18),
        ),
      ),
    );
  }
}
