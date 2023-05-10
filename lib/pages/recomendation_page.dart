import 'package:flutter/material.dart';
import 'package:taesmet/components/appbar.dart';
import 'package:taesmet/components/buttons/green_button.dart';
import 'package:taesmet/components/buttons/main_button.dart';
import 'package:taesmet/components/navbar.dart';
import 'package:intl/intl.dart';
import 'package:timezone/standalone.dart' as tz;

class RecomendationPage extends StatefulWidget {
  const RecomendationPage({Key? key}) : super(key: key);

  @override
  State<RecomendationPage> createState() => _RecomendationPageState();
}

class _RecomendationPageState extends State<RecomendationPage> {
  final _fecha = DateFormat('dd-MM-yyyy').format(
      tz.TZDateTime.from(DateTime.now(), tz.getLocation('America/Bogota')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: MyAppBar(fecha: _fecha),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 2.5 / 3,
              child: const Text(
                "¡¡Que tengas un excelente dia!!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 1.4 / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Column(children: const [
                  Padding(
                    padding: EdgeInsets.only(top:10.0),
                    child: Text(
                      "Recomendaciones",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '''•	Recuerda trabajar en un espacio apropiado y organizado\n\n•	Mantén una buena postura en tu sitio de trabajo\n\n•	Recuerda usar tus lentes si lo requieres\n\n•	¡¡Realiza tus pausas activas!!\n\n•	Verifica y minimiza los riesgos que pueden existir en tu entorno\n\n•	Si presentas algún problema infórmale oportunamente a tu superior.''',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
            ),
            const GreenButton(
              titulo: "Empezar",
              sizeFont: 25,
              redirection: "",
            ),
            const MainButtons()
          ],
        ),
      ),
    );
  }
}
