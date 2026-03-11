import 'package:flutter/material.dart';
import 'package:images/providers/home_provider.dart';
import 'package:images/screens/home_screen.dart';
import 'package:images/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeProvider())],
      child: MaterialApp(theme: AppTheme.lightTheme, home: HomeScreen()),
    );
  }
}
