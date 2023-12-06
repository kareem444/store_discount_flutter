import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/badge_widget.dart';

class HistoryItemFeature extends StatelessWidget {
  const HistoryItemFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
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
        subtitle: Text(
          "12-12-2021 12:00 PM",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BadgeWidget(text: "Accepted"),
            Text(
              "15%",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
