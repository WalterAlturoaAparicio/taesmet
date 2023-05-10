import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String titulo;
  final String redirection;
  final double sizeFont;
  const GreenButton({
    super.key,
    required this.titulo,
    required this.sizeFont,
    required this.redirection,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/$redirection');
      },
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(
              Colors.lightGreenAccent.shade700)),
      child: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: InkWell(
          
          child: Text(titulo,
              style: TextStyle(fontSize: sizeFont, color: Colors.white)),
        ),
      ),
    );
  }
}
