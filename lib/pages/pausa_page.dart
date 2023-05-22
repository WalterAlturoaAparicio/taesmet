import 'package:flutter/material.dart';
import 'package:taesmet/components/appbar.dart';
import 'package:intl/intl.dart';
import 'package:taesmet/components/buttons/green_button.dart';
import 'package:taesmet/pages/home_page.dart';
import 'package:timezone/standalone.dart' as tz;
import 'package:native_video_view/native_video_view.dart';

class PausaPage extends StatefulWidget {
  const PausaPage({Key? key}) : super(key: key);

  @override
  State<PausaPage> createState() => _PausaPageState();
}

class _PausaPageState extends State<PausaPage> {
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
            NativeVideoView(
              keepAspectRatio: true,
              showMediaController: true,
              onCreated: (controller) {
                controller.setVideoSource(
                  'assets/videos/pausa1.mp4',
                  sourceType: VideoSourceType.asset,
                );
              },
              onPrepared: (controller, info) {
                controller.play();
              },
              onError: (controller, what, extra, message) {
                // print('Player Error ($what | $extra | $message)');
              },
              onCompletion: (controller) {
                // print('Video completed');
              },
              onProgress: (progress, duration) {
                // print('$progress | $duration');
              },
            ),
            const Text(
              "Debes encender tu camara para continuar",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.lightGreenAccent.shade700)),
              child: const Padding(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: InkWell(
                  child: Text("Terminar pausa",
                      style: TextStyle(fontSize: 21, color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
