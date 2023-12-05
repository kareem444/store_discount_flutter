import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';
import 'package:my_flutter_app/common/widgets/bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';
import 'package:my_flutter_app/common/widgets/rectangular_image_button.dart';

class MainCategoriesPage extends StatelessWidget {
  const MainCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBarTitle: "Categories",
      page: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
        ),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return RectangularImageButton(
            text: "Category",
            onTap: () => Get.toNamed(RouterHelper.storesPage),
          );
        },
      ),
    );
  }
}
