import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:timezone/standalone.dart' as tz;

class AgendaClock extends StatelessWidget {
  const AgendaClock({
    super.key,
  });
  String getSystemTime() {
    return DateFormat("hh:mm:ss a").format(
        tz.TZDateTime.from(DateTime.now(), tz.getLocation('America/Bogota')));
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(const Duration(seconds: 1),
        builder: (context) {
      return Text(
        getSystemTime(),
        style: const TextStyle(color: Colors.black, fontSize: 35),
      );
    });
  }
}
