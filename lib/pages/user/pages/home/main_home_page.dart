import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/user/pages/home/features/home_categories_feature.dart';
import 'package:my_flutter_app/pages/user/pages/home/features/home_most_popular_feature.dart';
import 'package:my_flutter_app/pages/user/pages/home/features/home_search_feature.dart';
import 'package:my_flutter_app/pages/user/pages/home/features/home_slider_feature.dart';
import 'package:my_flutter_app/common/widgets/bottom_nav_bar_widget.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';
import 'package:my_flutter_app/common/widgets/divider_widget.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      appBarTitle: "Home",
      bottomNavigationBar: const BottomNavBarWidget(),
      page: Column(
        children: [
          const HomeSearchFeature(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Expanded(
            child: ListView(
              children: const [
                HomeSliderFeature(),
                HomeCategoriesFeature(),
                DividerWidget(),
                HomeMostPopularFeature(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
