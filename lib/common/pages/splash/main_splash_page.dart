import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';
import 'package:my_flutter_app/common/widgets/create_page_widget.dart';
import 'package:my_flutter_app/common/widgets/logo_widget.dart';

class MainSplashPage extends StatefulWidget {
  const MainSplashPage({Key? key}) : super(key: key);

  @override
  State<MainSplashPage> createState() => _MainSplashPageState();
}

class _MainSplashPageState extends State<MainSplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 2));
      // Get.offNamed(RouterHelper.signInPage);
      Get.offNamed(RouterHelper.adminCategoriesPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CreatePageWidget(
      page: Container(
        color: Theme.of(context).primaryColor,
        child: Animate(
          effects: const [FadeEffect(), ScaleEffect()],
          child: const LogoWidget(),
        ),
      ),
    );
  }
}
