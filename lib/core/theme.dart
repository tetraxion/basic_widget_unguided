import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blueGrey,
  ),
  useMaterial3: true,
  );
}
