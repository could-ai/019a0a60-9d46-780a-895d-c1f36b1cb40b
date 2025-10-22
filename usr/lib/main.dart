import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CopperWire Co.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFB87333), // A copper-like color
        scaffoldBackgroundColor: const Color(0xFF121212), // Very dark grey
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E1E1E), // Slightly lighter dark grey
          elevation: 0,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Serif',
          ),
          headlineMedium: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w300,
            color: Colors.white70,
            fontFamily: 'Serif',
          ),
          bodyLarge: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB87333), // Copper color
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CopperWire Co.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Products', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('About Us', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Contact', style: TextStyle(color: Colors.white))),
          const SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Precision Engineered',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Copper Wires',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: const Color(0xFFB87333), // Copper color
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Unleash the Power of Pure Conductivity.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Explore Our Products'),
            ),
          ],
        ),
      ),
    );
  }
}
