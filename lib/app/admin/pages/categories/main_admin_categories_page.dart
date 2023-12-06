import 'package:flutter/material.dart';
import 'package:my_flutter_app/app/admin/pages/categories/features/admin_add_category_feature.dart';
import 'package:my_flutter_app/app/admin/pages/categories/features/admin_category_item_feature.dart';
import 'package:my_flutter_app/app/admin/widgets/admin_bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/helper/bottom_sheet_helper.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainAdminCategoriesPage extends StatelessWidget {
  const MainAdminCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onFloatingActionButtonTap() {
      BottomSheetHelper.show(
        context,
        title: "Add Category",
        height: 2 / 3,
        child: const AdminAddCategoryFeature(),
      );
    }

    return CreatePageWidget(
      appBarTitle: "Categories",
      bottomNavigationBar: const AdminBottomNavBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: onFloatingActionButtonTap,
        child: const Icon(Icons.add),
      ),
      page: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const AdminCategoryItemFeature();
        },
      ),
    );
  }
}
