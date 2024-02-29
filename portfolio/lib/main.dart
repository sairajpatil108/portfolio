import 'package:flutter/material.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/ui_decider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
      create: (context) => ThemeNotifier(), // Initialize ThemeNotifier
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeNotifier.isDarkMode
            ? ThemeData(useMaterial3: true, colorScheme: darkColorScheme)
            : ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        home: const ui_decider(), // Use correct widget name
      ),
    );
  }
  
}

class ThemeNotifier extends ChangeNotifier {
  bool isDarkMode = true; // Initial state

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners(); // Notify listeners when theme changes
  }
}