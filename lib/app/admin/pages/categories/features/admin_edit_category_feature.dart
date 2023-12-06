import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';
import 'package:my_flutter_app/common/widgets/text_form_field_widget.dart';

class AdminEditCategoryFeature extends StatelessWidget {
  const AdminEditCategoryFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      child: ListView(
        children: [
          const DividerWidget(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.add_photo_alternate_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.05),
          const TextFormFieldWidget(
            placeHolder: "Category Name",
            value: "Category Name",
          ),
          SizedBox(height: Get.height * 0.05),
          ElevatedButton(onPressed: () {}, child: const Text("Edit")),
        ],
      ),
    );
  }
}
