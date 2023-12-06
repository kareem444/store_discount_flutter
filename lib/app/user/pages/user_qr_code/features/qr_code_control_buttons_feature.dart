import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeControlButtonsFeature extends StatelessWidget {
  const QrCodeControlButtonsFeature({
    Key? key,
    this.onFlashChange,
    this.onCameraChange,
    this.controller,
  }) : super(key: key);

  final QRViewController? controller;

  final void Function()? onFlashChange;
  final void Function()? onCameraChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onFlashChange,
            icon: FutureBuilder(
              future: controller?.getFlashStatus(),
              builder: (context, snapshot) {
                return Icon(
                  (snapshot.data != null && snapshot.data == true)
                      ? Icons.flash_on_outlined
                      : Icons.flash_off_outlined,
                  color: Colors.white,
                  size: 35,
                );
              },
            )),
        SizedBox(width: Get.width * 0.1),
        IconButton(
          onPressed: onCameraChange,
          icon: const Icon(
            Icons.switch_camera_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
      ],
    );
  }
}
