import 'package:basic_widget_unguided/core/theme.dart';
import 'package:basic_widget_unguided/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getDefaultTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
