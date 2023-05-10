import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required String fecha,
  }) : _fecha = fecha;

  final String _fecha;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                _fecha,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
              )),
        )
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}