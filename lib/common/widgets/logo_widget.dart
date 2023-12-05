import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Logo',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
