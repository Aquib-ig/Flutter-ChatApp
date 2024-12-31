import 'package:login_app/pages/edit_profile_page.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/pages/main_page.dart';
import 'package:login_app/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => const LoginPage(),
    home: (context) => HomePage(),
    main: (context) => const MainPage(),
    editPage: (context) => const EditProfilePage(),
    nearBy: (context) => const NearbyPage(),
  };

  static const login = "/";
  static const home = "/home";
  static const main = "/main";
  static const editPage = "/edit_page";
  static const nearBy = "/nearby";
}
