import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orangeAccent,
        child: ListView(
          
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Menu", style: TextStyle(fontSize: 25),),
            ),
            const ListTile(
              title: Text("Preguntas frecuentes"),
              leading: Icon(Icons.adjust),
            ),
            const ListTile(
              title: Text("Historial de pausas"),
              leading: Icon(Icons.history),
            ),
            const ListTile(
              title: Text("Control de seguridad"),
              leading: Icon(Icons.admin_panel_settings),
            ),
            const ListTile(
              title: Text("Reconocimiento del área"),
              leading: Icon(Icons.area_chart),
            ),
            const ListTile(
              title: Text("Historial de accidentes"),
              leading: Icon(Icons.history_toggle_off),
            ),
            const ListTile(
              title: Text("Contactar a un superior"),
              leading: Icon(Icons.contact_phone),
            ),
            const ListTile(
              title: Text("Lineas de emergencia"),
              leading: Icon(Icons.phone),
            ),
            const Divider(
              height: 12,
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 50),
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  child: const Text(
                    "Iniciar ticket",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
