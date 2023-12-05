import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/user/pages/history/features/history_item_feature.dart';
import 'package:my_flutter_app/common/widgets/bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainHistoryPage extends StatelessWidget {
  const MainHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBarTitle: "History",
      page: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return HistoryItemFeature(
            isSuccessful: (index % 2 == 0),
          );
        },
      ),
    );
  }
}
