import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/app/user/widgets/user_bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';
import 'package:my_flutter_app/common/widgets/profile_image_widget.dart';
import 'package:my_flutter_app/common/widgets/text_form_field_widget.dart';

class MainUserProfilePage extends StatelessWidget {
  const MainUserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      bottomNavigationBar: const UserBottomNavBarWidget(),
      appBarTitle: "Profile",
      page: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            ProfileImageWidget(
              size: Get.width * 0.3,
              showCameraIcon: true,
            ),
            const SizedBox(height: 10),
            const TextFormFieldWidget(
              title: "Email",
              value: "Email@gmail.com",
              readOnly: true,
            ),
            const SizedBox(height: 30),
            TextFormFieldWidget(
              title: "Name",
              value: "Michel",
              suffixIcon: Icon(
                Icons.edit,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 30),
            TextFormFieldWidget(
              title: "Mobile",
              value: "0445425427452",
              suffixIcon: Icon(
                Icons.edit,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
