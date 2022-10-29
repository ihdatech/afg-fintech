import 'package:fintech/app.dart';
import 'package:fintech/config/injection.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injection();
  runApp(const MyApp());
}

