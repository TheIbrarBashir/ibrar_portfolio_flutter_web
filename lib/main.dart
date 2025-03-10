import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/app_cache.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppCache.getInstance();
  runApp(const MyApp());
}
