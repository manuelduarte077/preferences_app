import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'Setting';
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingScreen'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('SettingScreen'),
      ),
    );
  }
}
