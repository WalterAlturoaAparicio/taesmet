import 'package:flutter/material.dart';
// import 'dart:html';

class MainButton extends StatelessWidget {
  final String titulo;
  final String imagen;
  final String redireccion;

  const MainButton({
    super.key,
    required this.titulo,
    required this.imagen,
    required this.redireccion,
  });
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (redireccion == "") {
          if (ModalRoute.of(context)!.settings.name != "/") {
            Navigator.pop(context);
          }
        } else {
          if (ModalRoute.of(context)!.settings.name != '/$redireccion') {
            Navigator.pushNamed(context, '/$redireccion');
          }
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titulo,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                softWrap: true,
              ),
              Image.asset(
                imagen,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainButtons extends StatelessWidget {
  const MainButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MainButton(
            titulo: "Agenda programada",
            imagen: "assets/images/agenda.png",
            redireccion: ""),
        MainButton(
            titulo: "Tiempo de pausa",
            imagen: "assets/images/pausa.png",
            redireccion: ""),
        MainButton(
            titulo: "Control de actividad",
            imagen: "assets/images/calendario.png",
            redireccion: "control"),
      ],
    );
  }
}
