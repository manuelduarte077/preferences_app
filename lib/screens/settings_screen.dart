import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingScreen extends StatefulWidget {
  static const String routeName = 'Setting';
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Manuel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              value: isDarkMode,
              onChanged: (value) {
                isDarkMode = value;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile<int>(
              title: const Text('Masculino'),
              value: 1,
              groupValue: gender,
              onChanged: (value) {
                gender = value ?? 1;
                setState(() {});
              },
            ),
            const Divider(),
            RadioListTile<int>(
              title: const Text('Femenino'),
              value: 2,
              groupValue: gender,
              onChanged: (value) {
                gender = value ?? 2;
                setState(() {});
              },
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Ingrese su nombre',
                ),
                initialValue: 'Manuel Duarte',
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
