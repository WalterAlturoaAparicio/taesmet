import 'package:flutter/material.dart';
import 'package:taesmet/components/appbar.dart';
import 'package:intl/intl.dart';
import 'package:taesmet/components/buttons/green_button.dart';
import 'package:taesmet/components/buttons/main_button.dart';
import 'package:taesmet/components/clock.dart';
import 'package:timezone/standalone.dart' as tz;

class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
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
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 3,
              child: Column(children: const [
                GreenButton(
                  titulo: "Agenda del dia",
                  sizeFont: 21,
                  redirection: "",
                ),
                GreenButton(
                  titulo: "Proxima pausa",
                  sizeFont: 21,
                  redirection: "",
                ),
                GreenButton(
                  titulo: "Metas cumplidas",
                  sizeFont: 21,
                  redirection: "",
                ),
                GreenButton(
                  titulo: "Contacto directo",
                  sizeFont: 21,
                  redirection: "",
                ),
                GreenButton(
                  titulo: "Informar un problema",
                  sizeFont: 21,
                  redirection: "",
                ),
              ]),
            ),
            const MainButtons()
          ],
        ),
      ),
    );
  }
}


