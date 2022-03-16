import 'package:flutter/material.dart';
import 'package:preferences_app/app/app.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/shared/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              ThemeProvider(isDarkMode: Preferences.isDarkMode),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
