import 'package:flutter/material.dart';
import 'package:taesmet/pages/control_page.dart';
import 'package:taesmet/pages/finish_page.dart';
import 'package:taesmet/pages/home_page.dart';
import 'package:taesmet/pages/notification_page.dart';
import 'package:taesmet/pages/pausa_page.dart';
import 'package:taesmet/pages/recomendation_page.dart';
import 'package:taesmet/services/cron.service.dart';
import 'package:taesmet/services/notification.service.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await initNotifications();
  initCron();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes: {
        '/': (context) => const MyHomePage(),
        '/control': (context) => const ControlPage(),
        '/recomendation': (context)=> const RecomendationPage(),
        '/notification': (context)=> const NotificationPage(),
        '/pausa': (context)=> const PausaPage(),
        '/finish': (context)=> const FinishPage(),
      }
    );
  }
}
