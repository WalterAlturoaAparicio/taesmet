import 'package:cron/cron.dart';
import 'package:taesmet/services/notification.service.dart';

initCron() {
  final cron = Cron();

  cron.schedule(Schedule.parse('0 10-16/2 * * 1-5'), () async {
      viewNotification();
  });

}
