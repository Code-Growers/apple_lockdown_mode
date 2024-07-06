import 'package:apple_lockdown_mode/apple_lockdown_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Apple lockdown mode plugin example app'),
        ),
        body: Center(
          child: FutureBuilder(
              future: AppleLockdownMode().isLockdownModeEnabled(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                      'Lockdown mode is: ${snapshot.data == true ? 'enabled' : 'disabled'}');
                }
                if (snapshot.hasError) {
                  return const Text(
                      'Error while fetching lockdown mode status');
                }
                return const Text('Checking lockdown mode...');
              }),
        ),
      ),
    );
  }
}
