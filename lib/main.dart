import 'package:flutter/material.dart';
import 'package:graduation_project/shared_locale/helper.dart';
import 'package:graduation_project/ui/screens/auth/login/login_screen.dart';
import 'package:graduation_project/ui/screens/auth/signup/register_screen.dart';
import 'package:graduation_project/ui/screens/main/main_screen.dart';
import 'package:graduation_project/ui/screens/main/tabs/home/home_screen.dart';
import 'package:graduation_project/ui/screens/main/tabs/profile/profile_screen.dart';
import 'package:graduation_project/ui/screens/main/tabs/profile/update_picture/update_picture_screen.dart';

import 'package:graduation_project/ui/screens/splash/splash_screen.dart';
import 'package:graduation_project/ui/utils/app_theme.dart';

import 'domain/di/di.dart';


void main() async{
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceGlobal.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {
        SplashScreen.routeName :(context) => const SplashScreen(),
        LoginScreen.routeName :(context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        // ProfileScreen.routeName:(context) => ProfileScreen(),
        // UpdatePictureScreen.routeName:(context) => UpdatePictureScreen(),
        MainScreen.routeName :(context) => const MainScreen(),
        HomeScreen.routeName :(context) => const HomeScreen(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}

