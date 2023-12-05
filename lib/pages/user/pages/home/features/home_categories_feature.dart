import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/circle_image_button_widget.dart';

class HomeCategoriesFeature extends StatelessWidget {
  const HomeCategoriesFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
              CircleImageButtonWidget(),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
