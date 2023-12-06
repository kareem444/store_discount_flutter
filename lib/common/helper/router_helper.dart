import 'package:get/get.dart';
import 'package:my_flutter_app/app/admin/pages/categories/main_admin_categories_page.dart';
import 'package:my_flutter_app/app/admin/pages/slider/main_admin_slider_page.dart';
import 'package:my_flutter_app/app/admin/pages/stores/main_admin_stores_page.dart';
import 'package:my_flutter_app/app/auth/pages/forgetPassword/main_forget_password_page.dart';
import 'package:my_flutter_app/app/auth/pages/signIn/main_sign_in_page.dart';
import 'package:my_flutter_app/app/auth/pages/signUp/main_sign_up_page.dart';
import 'package:my_flutter_app/app/store/pages/store_discount_requests/main_store_discount_request_page.dart';
import 'package:my_flutter_app/app/store/pages/store_history/main_store_history_page.dart';
import 'package:my_flutter_app/app/user/pages/user_categories/main_user_categories_page.dart';
import 'package:my_flutter_app/app/user/pages/user_history/main_user_history_page.dart';
import 'package:my_flutter_app/app/user/pages/user_home/main_user_home_page.dart';
import 'package:my_flutter_app/app/user/pages/user_profile/main_user_profile_page.dart';
import 'package:my_flutter_app/app/user/pages/user_qr_code/main_qr_code_page.dart';
import 'package:my_flutter_app/common/pages/splash/main_splash_page.dart';
import 'package:my_flutter_app/app/user/pages/user_store/main_store_page.dart';
import 'package:my_flutter_app/app/user/pages/user_stores/main_stores_page.dart';

class RouterHelper {
  static const String splashPage = '/';
  // auth routes
  static const String signInPage = '/signIn';
  static const String signUpPage = '/signUp';
  static const String forgetPasswordPage = '/forgetPassword';

  // user routes
  static const String userHomePage = '/userHome';
  static const String userCategoriesPage = '/userCategories';
  static const String userQrCodePage = '/userQrCode';
  static const String userProfilePage = '/userProfile';
  static const String userHistoryPage = '/userHistory';
  static const String userStoresPage = '/userStores';
  static const String userStorePage = '/userStore';

  // store routes
  static const String storeDiscountRequestsPage = '/storeDiscountRequests';
  static const String storeHistoryPage = '/storeHistory';

  // admin routes
  static const String adminCategoriesPage = '/adminCategories';
  static const String adminStoresPage = '/adminStores';
  static const String adminSliderPage = '/adminSlider';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => const MainSplashPage()),

    // auth routes
    GetPage(name: signInPage, page: () => const MainSignInPage()),
    GetPage(name: signUpPage, page: () => const MainSignUpPage()),
    GetPage(
      name: forgetPasswordPage,
      page: () => const MainForgetPasswordPage(),
    ),

    // user routes
    GetPage(name: userHomePage, page: () => const MainUserHomePage()),
    GetPage(
        name: userCategoriesPage, page: () => const MainUserCategoriesPage()),
    GetPage(name: userQrCodePage, page: () => const MainUserQrCodePage()),
    GetPage(name: userProfilePage, page: () => const MainUserProfilePage()),
    GetPage(name: userHistoryPage, page: () => const MainUserHistoryPage()),
    GetPage(name: userStoresPage, page: () => const MainUserStoresPage()),
    GetPage(name: userStorePage, page: () => const MainUserStorePage()),

    // store routes
    GetPage(
      name: storeDiscountRequestsPage,
      page: () => const MainStoreDiscountRequestPage(),
    ),
    GetPage(
      name: storeHistoryPage,
      page: () => const MainStoreHistoryPage(),
    ),

    // admin routes
    GetPage(
      name: adminCategoriesPage,
      page: () => const MainAdminCategoriesPage(),
    ),
    GetPage(name: adminStoresPage, page: () => const MainAdminStoresPage()),
    GetPage(name: adminSliderPage, page: () => const MainAdminSliderPage()),
  ];
}
