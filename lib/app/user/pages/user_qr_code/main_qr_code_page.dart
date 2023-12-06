import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/app/user/pages/user_qr_code/features/qr_code_control_buttons_feature.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MainUserQrCodePage extends StatefulWidget {
  const MainUserQrCodePage({Key? key}) : super(key: key);

  @override
  State<MainUserQrCodePage> createState() => _MainUserQrCodePageState();
}

class _MainUserQrCodePageState extends State<MainUserQrCodePage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void onFlashChange() async {
    await controller!.toggleFlash();
    setState(() {});
  }

  void onCameraChange() async {
    await controller!.flipCamera();
    setState(() {});
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      appBarTitle: "QR Code",
      page: Stack(
        children: <Widget>[
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderRadius: 10,
              borderColor: Theme.of(context).colorScheme.secondary,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: Get.width * 0.8,
            ),
          ),
          Positioned(
            top: 10,
            width: Get.width,
            child: QrCodeControlButtonsFeature(
              controller: controller,
              onFlashChange: onFlashChange,
              onCameraChange: onCameraChange,
            ),
          )
        ],
      ),
    );
  }
}
