import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'Setting';
  const SettingScreen({Key? key}) : super(key: key);

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
              value: true,
              onChanged: (value) {},
            ),
            const Divider(),
            RadioListTile<int>(
              title: const Text('Masculino'),
              value: 1,
              groupValue: 1,
              onChanged: (value) {},
            ),
            const Divider(),
            RadioListTile<int>(
              title: const Text('Femenino'),
              value: 2,
              groupValue: 1,
              onChanged: (value) {},
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
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
