import 'package:flutter/material.dart';

enum BadgeColor { accepted, rejected }

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key? key,
    this.text = "",
    this.color = BadgeColor.accepted,
  }) : super(key: key);

  final String text;
  final BadgeColor color;

  @override
  Widget build(BuildContext context) {
    Color? backGroundColor() {
      late Color? result;

      if (color == BadgeColor.accepted) {
        result = Colors.blue[900]!;
      } else if (color == BadgeColor.rejected) {
        result = Colors.red;
      }
      return result;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backGroundColor(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
