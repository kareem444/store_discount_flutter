import 'package:flutter/material.dart';
import 'package:my_flutter_app/app/store/pages/store_history/features/history_item_feature.dart';
import 'package:my_flutter_app/app/store/widgets/store_bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainStoreHistoryPage extends StatelessWidget {
  const MainStoreHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      appBarTitle: "History",
      bottomNavigationBar: const StoreBottomNavBarWidget(),
      page: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const HistoryItemFeature();
        },
      ),
    );
  }
}
