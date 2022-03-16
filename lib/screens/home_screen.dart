import 'package:flutter/material.dart';
import 'package:preferences_app/shared/preferences.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('HomeScreen'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('isDarkMode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Genero: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre: ${Preferences.name}'),
          const Divider(),
        ],
      ),
    );
  }
}
