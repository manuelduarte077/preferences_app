import 'package:flutter/material.dart';
import 'package:preferences_app/app/app.dart';
import 'package:preferences_app/shared/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(const MyApp());
}
