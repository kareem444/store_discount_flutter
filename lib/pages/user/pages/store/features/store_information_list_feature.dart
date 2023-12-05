import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';

class StoreInformationListFeature extends StatelessWidget {
  const StoreInformationListFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DividerWidget(),
        ListTile(
          leading: Icon(
            Icons.email_outlined,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            "Store Email",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.local_phone_rounded,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            "Store Phone Number",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.location_on_outlined,
            color: Colors.black,
            size: 30,
          ),
          title: Text(
            "Store Email",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        DividerWidget(),
      ],
    );
  }
}
