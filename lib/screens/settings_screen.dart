import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/shared/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  static const String routeName = 'Setting';
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            SwitchListTile.adaptive(
              title: const Text('Dark Mode'),
              value: Preferences.isDarkMode,
              onChanged: (value) {
                Preferences.isDarkMode = value;
                final themeProvider =
                    Provider.of<ThemeProvider>(context, listen: false);

                value
                    ? themeProvider.setDarkMode()
                    : themeProvider.setLightMode();

                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile<int>(
              title: const Text('Masculino'),
              value: 1,
              groupValue: Preferences.gender,
              onChanged: (value) {
                Preferences.gender = value ?? 1;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile<int>(
              title: const Text('Femenino'),
              value: 2,
              groupValue: Preferences.gender,
              onChanged: (value) {
                Preferences.gender = value ?? 2;
                setState(() {});
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: Preferences.name,
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Ingrese su nombre',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
