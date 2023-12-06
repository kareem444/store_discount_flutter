import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/common/helper/router_helper.dart';

class UserBottomNavBarWidget extends StatefulWidget {
  const UserBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<UserBottomNavBarWidget> createState() => _UserBottomNavBarWidgetState();
}

class _UserBottomNavBarWidgetState extends State<UserBottomNavBarWidget> {
  int _selectedIndex = 4;

  void changeIndexOnRouteChange() {
    // get the current route
    var currentRoute = Get.currentRoute;

    // change the index based on the route
    if (currentRoute == RouterHelper.userHomePage) {
      setState(() {
        _selectedIndex = 4;
      });
    } else if (currentRoute == RouterHelper.userCategoriesPage) {
      setState(() {
        _selectedIndex = 3;
      });
    } else if (currentRoute == RouterHelper.userProfilePage) {
      setState(() {
        _selectedIndex = 1;
      });
    } else if (currentRoute == RouterHelper.userHistoryPage) {
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
        Get.offNamed(RouterHelper.userHistoryPage);
        break;
      case 1:
        Get.offNamed(RouterHelper.userProfilePage);
        break;
      case 2:
        Get.toNamed(RouterHelper.userQrCodePage)?.then((value) {
          Get.offNamed(RouterHelper.userHomePage);
        });
        break;
      case 3:
        Get.offNamed(RouterHelper.userCategoriesPage);
        break;
      case 4:
        Get.offNamed(RouterHelper.userHomePage);
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
