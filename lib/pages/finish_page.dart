import 'package:flutter/material.dart';
import 'package:taesmet/components/appbar.dart';
import 'package:taesmet/components/buttons/green_button.dart';
import 'package:taesmet/components/buttons/main_button.dart';
import 'package:intl/intl.dart';
import 'package:timezone/standalone.dart' as tz;

class FinishPage extends StatefulWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  State<FinishPage> createState() => _FinishPageState();
}

class _FinishPageState extends State<FinishPage> {
  final _fecha = DateFormat('dd-MM-yyyy').format(
      tz.TZDateTime.from(DateTime.now(), tz.getLocation('America/Bogota')));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(fecha: _fecha),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 1.3 / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: Column(children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Felcidades hemos terminado la pausa",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '''•	Ahora puedes terminar con tu trbajo\n\n•	Recuerda mantenerte hidratado\n\n•	No dudes en requerir ayuda cuando lo necesites\n\n''',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
            ),
            const GreenButton(
              titulo: "Continuar",
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
