import 'package:get/get.dart';
import 'package:my_flutter_app/pages/auth/pages/forgetPassword/main_forget_password_page.dart';
import 'package:my_flutter_app/pages/auth/pages/signIn/main_sign_in_page.dart';
import 'package:my_flutter_app/pages/auth/pages/signUp/main_sign_up_page.dart';
import 'package:my_flutter_app/pages/user/pages/categories/main_categories_page.dart';
import 'package:my_flutter_app/pages/user/pages/history/main_history_page.dart';
import 'package:my_flutter_app/pages/user/pages/home/main_home_page.dart';
import 'package:my_flutter_app/pages/user/pages/profile/main_profile_page.dart';
import 'package:my_flutter_app/pages/user/pages/qr_code/main_qr_code_page.dart';
import 'package:my_flutter_app/pages/user/pages/splash/main_splash_page.dart';
import 'package:my_flutter_app/pages/user/pages/store/main_store_page.dart';
import 'package:my_flutter_app/pages/user/pages/stores/main_stores_page.dart';

class RouterHelper {
  static const String splashPage = '/';
  static const String signInPage = '/signIn';
  static const String signUpPage = '/signUp';
  static const String forgetPasswordPage = '/forgetPassword';
  static const String homePage = '/home';
  static const String categoriesPage = '/categories';
  static const String qrCodePage = '/qrCode';
  static const String profilePage = '/profile';
  static const String historyPage = '/history';
  static const String storesPage = '/stores';
  static const String storePage = '/store';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const MainSplashPage()),
    GetPage(name: signInPage, page: () => const MainSignInPage()),
    GetPage(name: signUpPage, page: () => const MainSignUpPage()),
    GetPage(
      name: forgetPasswordPage,
      page: () => const MainForgetPasswordPage(),
    ),
    GetPage(name: homePage, page: () => const MainHomePage()),
    GetPage(name: categoriesPage, page: () => const MainCategoriesPage()),
    GetPage(name: qrCodePage, page: () => const MainQrCodePage()),
    GetPage(name: profilePage, page: () => const MainProfilePage()),
    GetPage(name: historyPage, page: () => const MainHistoryPage()),
    GetPage(name: storesPage, page: () => const MainStoresPage()),
    GetPage(name: storePage, page: () => const MainStorePage()),
  ];
}
