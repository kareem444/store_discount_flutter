import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HistoryItemFeature extends StatelessWidget {
  const HistoryItemFeature({
    Key? key,
    this.isSuccessful = true,
  }) : super(key: key);

  final bool isSuccessful;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(50)),
          ),
          title: AutoSizeText(
            "Store name",
            maxLines: 1,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          subtitle: AutoSizeText(
            "11 September 2021",
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: isSuccessful
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: isSuccessful
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      )
                    : null,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "\$50",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        const DividerWidget()
      ],
    );
  }
}
