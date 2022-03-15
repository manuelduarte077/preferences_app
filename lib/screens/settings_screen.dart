import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'Setting';
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingScreen'),
      ),
      body: const Center(
        child: Text('SettingScreen'),
      ),
    );
  }
}
