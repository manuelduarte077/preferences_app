import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';
import 'package:preferences_app/shared/preferences.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SettingScreen.routeName: (context) => const SettingScreen(),
      },
      theme: Preferences.isDarkMode ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
