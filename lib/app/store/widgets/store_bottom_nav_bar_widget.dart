import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';

class StoreBottomNavBarWidget extends StatefulWidget {
  const StoreBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<StoreBottomNavBarWidget> createState() =>
      _StoreBottomNavBarWidgetState();
}

class _StoreBottomNavBarWidgetState extends State<StoreBottomNavBarWidget> {
  int _selectedIndex = 1;

  void changeIndexOnRouteChange() {
    // get the current route
    var currentRoute = Get.currentRoute;

    // change the index based on the route
    if (currentRoute == RouterHelper.storeHistoryPage) {
      setState(() {
        _selectedIndex = 0;
      });
    } else if (currentRoute == RouterHelper.storeDiscountRequestsPage) {
      setState(() {
        _selectedIndex = 1;
      });
    }
  }

  void handelOnTap(int index) {
    switch (index) {
      case 0:
        Get.offNamed(RouterHelper.storeHistoryPage);
        break;
      case 1:
        Get.offNamed(RouterHelper.storeDiscountRequestsPage);
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    changeIndexOnRouteChange();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: handelOnTap,
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.listCheck),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add_rounded, size: 32),
          label: '',
        ),
      ],
    );
  }
}
