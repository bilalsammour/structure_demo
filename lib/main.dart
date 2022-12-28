import 'package:flutter/material.dart';
import 'package:structure_demo/app/app.dart';
import 'package:structure_demo/app/locators_setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  LocatorsSetup.setup();

  runApp(
    const App(),
  );
}
