import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const _DrawerHeaderWidget(),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            title: const Text('Setting'),
            leading: const Icon(Icons.settings),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawerHeaderWidget extends StatelessWidget {
  const _DrawerHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      child: Text('Shared Preferences'),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
