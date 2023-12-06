import 'package:flutter/material.dart';
import 'package:my_flutter_app/app/admin/pages/stores/features/admin_add_store_widget.dart';
import 'package:my_flutter_app/app/admin/pages/stores/features/admin_store_item_feature.dart';
import 'package:my_flutter_app/app/admin/widgets/admin_bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/helper/bottom_sheet_helper.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainAdminStoresPage extends StatelessWidget {
  const MainAdminStoresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onFloatingActionButtonTap() {
      BottomSheetHelper.show(
        context,
        height: 9 / 10,
        title: "Add Store",
        child: const AdminAddStoreWidget(),
      );
    }

    return CreatePageWidget(
      appBarTitle: "Stores",
      bottomNavigationBar: const AdminBottomNavBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: onFloatingActionButtonTap,
        child: const Icon(Icons.add),
      ),
      page: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const AdminStoreItemFeature();
        },
      ),
    );
  }
}
