import 'package:flutter/material.dart';
import 'package:taesmet/components/appbar.dart';
import 'package:intl/intl.dart';
import 'package:taesmet/components/buttons/green_button.dart';
import 'package:taesmet/components/clock.dart';
import 'package:timezone/standalone.dart' as tz;

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late DateTime alert;

  @override
  void initState() {
    super.initState();
    alert = DateTime.now().add(const Duration(seconds: 10));
  }

  @override
  Widget build(BuildContext context) {
    final fecha = DateFormat('dd-MM-yyyy').format(
        tz.TZDateTime.from(DateTime.now(), tz.getLocation('America/Bogota')));

    return Scaffold(
      appBar: MyAppBar(fecha: fecha),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AgendaClock(),
            const Text(
              "¡¡MOMENTO DE PAUSA!!",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Image.asset(
              "assets/images/aviso.png",
              height: 300,
            ),
            const GreenButton(
              titulo: "Iniciar pausa activa",
              sizeFont: 21,
              redirection: "pausa",
            ),
          ],
        ),
      ),
    );
  }
}
