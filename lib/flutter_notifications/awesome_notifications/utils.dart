import 'package:flutter/material.dart';

int createUniqueId() {
  return DateTime.now().millisecondsSinceEpoch.remainder(100000);
}

class NotificationWeekAndTime {
  final int dayOfTheWeek;
  final TimeOfDay timeOfDay;

  NotificationWeekAndTime({
    required this.dayOfTheWeek,
    required this.timeOfDay,
  });
}

Future<NotificationWeekAndTime?> pickSchdule(BuildContext context) async {
  List<String> weekdays = ['Mon', 'Tues', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'];
  TimeOfDay? timeOfDay;
  DateTime now = DateTime.now();
  int? selectedDay;

  await showDialog(
    context: context,
    builder: (builder) => AlertDialog(
      title: const Text(
        'I want to be reminded every:',
        textAlign: TextAlign.center,
      ),
      content: Wrap(
        alignment: WrapAlignment.center,
        spacing: 3,
        children: [
          for (int i = 0; i < weekdays.length; i++)
            ElevatedButton(
              onPressed: () {
                selectedDay = i + 1;
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.teal,
                ),
              ),
              child: Text(weekdays[i]),
            )
        ],
      ),
    ),
  );

  if (selectedDay != null) {
    timeOfDay = await showTimePicker(
        context: context,
        initialTime:
            TimeOfDay.fromDateTime(now.add(const Duration(milliseconds: 3000))),
        builder: (context, Widget? child) {
          return Theme(
            data: ThemeData(
              colorScheme: const ColorScheme.light(
                primary: Colors.teal,
              ),
            ),
            child: child!,
          );
        });
  }

  if (timeOfDay != null) {
    return NotificationWeekAndTime(
      dayOfTheWeek: selectedDay!,
      timeOfDay: timeOfDay,
    );
  }

  return null;
}
