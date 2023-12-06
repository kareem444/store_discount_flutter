import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';

class AdminBottomNavBarWidget extends StatefulWidget {
  const AdminBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<AdminBottomNavBarWidget> createState() =>
      _AdminBottomNavBarWidgetState();
}

class _AdminBottomNavBarWidgetState extends State<AdminBottomNavBarWidget> {
  int _selectedIndex = 1;

  void changeIndexOnRouteChange() {
    // get the current route
    var currentRoute = Get.currentRoute;

    // change the index based on the route
    if (currentRoute == RouterHelper.adminCategoriesPage) {
      setState(() {
        _selectedIndex = 0;
      });
    } else if (currentRoute == RouterHelper.adminStoresPage) {
      setState(() {
        _selectedIndex = 1;
      });
    } else if (currentRoute == RouterHelper.adminSliderPage) {
      setState(() {
        _selectedIndex = 2;
      });
    }
  }

  void handelOnTap(int index) {
    switch (index) {
      case 0:
        Get.offNamed(RouterHelper.adminCategoriesPage);
        break;
      case 1:
        Get.offNamed(RouterHelper.adminStoresPage);
        break;
      case 2:
        Get.offNamed(RouterHelper.adminSliderPage);
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
          icon: Icon(Icons.grid_view_rounded, size: 32),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.store),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_carousel_outlined, size: 35),
          label: '',
        ),
      ],
    );
  }
}
