import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/app/admin/pages/slider/features/admin_add_slider_item_feature.dart';
import 'package:my_flutter_app/app/admin/pages/slider/features/admin_edit_slider_item_feature.dart';
import 'package:my_flutter_app/app/admin/widgets/admin_bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/helper/bottom_sheet_helper.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainAdminSliderPage extends StatelessWidget {
  const MainAdminSliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onFloatingActionButtonTap() {
      BottomSheetHelper.show(
        context,
        height: 3 / 4,
        title: "Add Slider",
        child: const AdminAddSliderItemFeature(),
      );
    }

    void handleOnTap() {
      BottomSheetHelper.show(
        context,
        height: 3 / 4,
        title: "Edit Slider",
        child: const AdminEditSliderItemFeature(),
      );
    }

    return CreatePageWidget(
      appBarTitle: "Slider",
      floatingActionButton: FloatingActionButton(
        onPressed: onFloatingActionButtonTap,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const AdminBottomNavBarWidget(),
      page: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: handleOnTap,
              child: Container(
                height: Get.height * 0.2,
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Icon(
                  Icons.photo_outlined,
                  size: Get.width * 0.2,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
