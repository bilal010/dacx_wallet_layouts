import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dacx_wallet_layouts/flutter_notifications/awesome_notifications/utils.dart';
import 'package:flutter/material.dart';

import 'notifications_api.dart';

class AwesomeNotificationHomePage extends StatefulWidget {
  const AwesomeNotificationHomePage({Key? key}) : super(key: key);

  @override
  State<AwesomeNotificationHomePage> createState() =>
      _AwesomeNotificationHomePageState();
}

class _AwesomeNotificationHomePageState
    extends State<AwesomeNotificationHomePage> {
  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Allow Notifications'),
            content: const Text('Our app would like to send you notifications'),
            actions: [
              //Don't Allow
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Don\'t Allow',
                  style: TextStyle(color: Colors.grey, fontSize: 18.0),
                ),
              ),
              //Allow Notifications
              TextButton(
                onPressed: () {
                  AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then(
                        (_) => Navigator.pop(context),
                      );
                },
                child: const Text(
                  'Allow Notifications',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Simple Notification
            ElevatedButton.icon(
              label: const Text('Simple Notifications'),
              icon: const Icon(Icons.doorbell),
              onPressed: () async{
                await AwesomeNotificationApi.createSimpleNotification();
              },
            ),
            
            //Schedule Notification
            ElevatedButton.icon(
              label: const Text('Schedule Notifications'),
              icon: const Icon(Icons.doorbell),
              onPressed: () async{
                NotificationWeekAndTime? pickedSchedule = await pickSchdule(context);
                if (pickedSchedule != null) {
                  AwesomeNotificationApi.createScheduleNotification(pickedSchedule);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
