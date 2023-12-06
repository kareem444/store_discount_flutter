import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/add_image_placeholder_widget.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';
import 'package:my_flutter_app/common/widgets/drop_down_widget.dart';

class AdminEditSliderItemFeature extends StatelessWidget {
  const AdminEditSliderItemFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: const [
                AddImagePlaceholderWidget(),
                SizedBox(height: 20),
                DropDownWidget(title: "Choose category"),
              ],
            ),
          ),
        ),
        const DividerWidget(),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Edit"),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
