import 'package:flutter/material.dart';

class CircleImageButtonWidget extends StatelessWidget {
  const CircleImageButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        const SizedBox(height: 7),
        Text(
          "category",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ],
    );
  }
}
