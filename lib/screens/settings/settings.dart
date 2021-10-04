import 'package:flutter/material.dart';
import 'components/settingsBody.dart';
import 'package:morning_quote/constraints.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          backgroundColor: primaryColor,
        ),
        body: const SettingsBody(),
      ),
    );
  }
}
