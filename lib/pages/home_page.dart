import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taesmet/components/Navbar.dart';
import 'package:taesmet/components/appbar_home.dart';
import 'package:taesmet/components/buttons/green_button.dart';
import 'package:taesmet/components/buttons/main_button.dart';
import 'package:timezone/standalone.dart' as tz;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _fecha = DateFormat('dd-MM-yyyy').format(
      tz.TZDateTime.from(DateTime.now(), tz.getLocation('America/Bogota')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: MyAppBarHome(fecha: _fecha),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              "Hola",
              style: TextStyle(fontSize: 30),
            ),
            const GreenButton(
                titulo: "Iniciar jornada",
                sizeFont: 25,
                redirection: "recomendation"),
            Image.asset(
              "assets/images/logo.png",
              height: 280,
            ),
            const MainButtons()
          ],
        ),
      ),
    );
  }
}
