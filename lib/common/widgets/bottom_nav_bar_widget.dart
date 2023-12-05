import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 4;

  void changeIndexOnRouteChange() {
    // get the current route
    var currentRoute = Get.currentRoute;

    // change the index based on the route
    if (currentRoute == RouterHelper.homePage) {
      setState(() {
        _selectedIndex = 4;
      });
    } else if (currentRoute == RouterHelper.categoriesPage) {
      setState(() {
        _selectedIndex = 3;
      });
    } else if (currentRoute == RouterHelper.profilePage) {
      setState(() {
        _selectedIndex = 1;
      });
    } else if (currentRoute == RouterHelper.historyPage) {
      setState(() {
        _selectedIndex = 0;
      });
    } else {
      setState(() {
        _selectedIndex = 2;
      });
    }
  }

  void handelOnTap(int index) {
    if (index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }

    switch (index) {
      case 0:
        Get.offNamed(RouterHelper.historyPage);
        break;
      case 1:
        Get.offNamed(RouterHelper.profilePage);
        break;
      case 2:
        Get.toNamed(RouterHelper.qrCodePage)?.then((value) {
          Get.offNamed(RouterHelper.homePage);
        });
        break;
      case 3:
        Get.offNamed(RouterHelper.categoriesPage);
        break;
      case 4:
        Get.offNamed(RouterHelper.homePage);
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
          icon: FaIcon(FontAwesomeIcons.user),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.qrcode),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.shop),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.house,
            size: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
