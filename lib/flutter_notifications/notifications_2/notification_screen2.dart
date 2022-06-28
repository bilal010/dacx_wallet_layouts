import 'package:dacx_wallet_layouts/flutter_notifications/notifications_1/notification_api.dart';
import 'package:dacx_wallet_layouts/flutter_notifications/notifications_2/page_2.dart';
import 'package:flutter/material.dart';


//Notification running in Background when App is killed,
// Custom Sound, No Sound, With Image

class NotificationScreen2 extends StatefulWidget {
  const NotificationScreen2({Key? key}) : super(key: key);

  @override
  State<NotificationScreen2> createState() => _NotificationScreen2State();
}

class _NotificationScreen2State extends State<NotificationScreen2> {
  @override
  void initState() {
    super.initState();

    NotificationApi.init(initScheduled: true);
    listenNotifications();

    //on app start show notification after 5 seconds without pressing button
    /*NotificationApi.showScheduleNotifications(
      title: 'Dinner',
      body: 'Reminder! Dinner at 9.00 PM',
      payload: 'dinner_9pm',
      scheduleDate: DateTime.now().add(const Duration(seconds: 5)),
    );*/

  }

  void listenNotifications() {
    NotificationApi.onNotifications.stream.listen((onClickedNotification));
  }

  void onClickedNotification(String? payload) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page2(payload: payload),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Screen # 1'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              label: const Text('Simple Notifications'),
              icon: const Icon(Icons.doorbell_outlined),
              onPressed: () {

                NotificationApi.showNotifications(
                  title: 'Sarah Abs',
                  body: 'Hey! Do we have everything for lunch',
                  payload: 'sarah.abs',
                );

              },
            ),
            ElevatedButton.icon(
              label: const Text('Scheduled Notifications'),
              icon: const Icon(Icons.doorbell),
              onPressed: () {

                NotificationApi.showScheduleNotifications(
                  title: 'Dinner',
                  body: 'Reminder! Dinner at 9.00 PM',
                  payload: 'dinner_9pm',
                  scheduleDate: DateTime.now().add(const Duration(seconds: 5)),
                );

                const snackBar = SnackBar(
                  content: Text('Notification schedule in 5 secs'),
                  backgroundColor: Colors.greenAccent,
                );

                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(snackBar);

              },
            ),
            ElevatedButton.icon(
              label: const Text('Cancel Notifications'),
              icon: const Icon(Icons.dangerous_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
