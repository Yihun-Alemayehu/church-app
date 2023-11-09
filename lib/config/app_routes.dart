import 'package:church_app/pages/pages.dart';

class AppRoutes {
  static final pages = {
    home: (context) => const HomePage(),
    main: (context) => const MainPage(),
    editProfile: (context) => const EditProfile(),
    //nearby: (context) => NearbyPage(),
    //user: (context) => UserPage(),
  };

  static const home = '/';
  //static const login = '/';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
