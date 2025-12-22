import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/screens/welcome.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    fullScreen: true,
    center: true,
    titleBarStyle: TitleBarStyle.hidden,
    backgroundColor: Colors.black,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WelCome();
  }
}
