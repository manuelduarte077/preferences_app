import 'package:flutter/material.dart';
import 'package:preferences_app/app/app.dart';
import 'package:preferences_app/shared/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Asi puedo usar mis preferencias de manera global
  await Preferences.init();
  runApp(const MyApp());
}
