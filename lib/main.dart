import 'package:fintech/app.dart';
import 'package:fintech/config/fintech_config.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FintechConfig.instance.injection();
  runApp(const FintechApp());
}

