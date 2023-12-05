import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/pages/user/pages/store/features/store_image_feature.dart';
import 'package:my_flutter_app/pages/user/pages/store/features/store_information_list_feature.dart';
import 'package:my_flutter_app/pages/user/pages/store/features/store_name_feature.dart';
import 'package:my_flutter_app/pages/user/pages/store/features/store_rating_feature.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';

class MainStorePage extends StatelessWidget {
  const MainStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      appBarTitle: "store name",
      page: ListView(
        children: [
          const StoreImageFeature(),
          SizedBox(height: Get.height * 0.02),
          const StoreNameFeature(),
          SizedBox(height: Get.height * 0.02),
          const StoreInformationListFeature(),
          SizedBox(height: Get.height * 0.05),
          const StoreRatingFeature()
        ],
      ),
    );
  }
}
