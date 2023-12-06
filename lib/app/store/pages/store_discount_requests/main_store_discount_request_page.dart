import 'package:flutter/material.dart';
import 'package:my_flutter_app/app/store/pages/store_discount_requests/features/discount_item_feature.dart';
import 'package:my_flutter_app/app/store/widgets/store_bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainStoreDiscountRequestPage extends StatelessWidget {
  const MainStoreDiscountRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      appBarTitle: "Discount Requests",
      bottomNavigationBar: const StoreBottomNavBarWidget(),
      page: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const DiscountItemFeature();
        },
      ),
    );
  }
}
