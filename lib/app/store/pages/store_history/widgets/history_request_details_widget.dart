import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';

class HistoryRequestDetailsWidget extends StatelessWidget {
  const HistoryRequestDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              "https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png",
            ),
          ),
          title: Text(
            "Person Name",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          trailing: Text(
            "15%",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        const SizedBox(height: 10),
        const DividerWidget(),
        ListTile(
          leading: const Icon(Icons.access_time_rounded),
          title: Text(
            "12-12-2021 12:00 PM",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.email),
          title: Text(
            "Person Email",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.phone),
          title: Text(
            "0123456789",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
