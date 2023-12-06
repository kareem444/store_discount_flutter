import 'package:flutter/material.dart';
import 'package:my_flutter_app/common/widgets/add_image_placeholder_widget.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';
import 'package:my_flutter_app/common/widgets/drop_down_widget.dart';
import 'package:my_flutter_app/common/widgets/text_form_field_widget.dart';

class AdminAddStoreWidget extends StatelessWidget {
  const AdminAddStoreWidget({Key? key}) : super(key: key);

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
                SizedBox(height: 20),
                TextFormFieldWidget(title: "Name"),
                SizedBox(height: 20),
                TextFormFieldWidget(title: "Email"),
                SizedBox(height: 20),
                TextFormFieldWidget(title: "Mobile"),
                SizedBox(height: 20),
                TextFormFieldWidget(title: "Address"),
                SizedBox(height: 20),
                TextFormFieldWidget(title: "Password"),
              ],
            ),
          ),
        ),
        const DividerWidget(),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Add"),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
