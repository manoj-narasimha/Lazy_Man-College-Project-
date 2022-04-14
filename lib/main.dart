import 'package:flutter/material.dart';
import 'package:lazy_man/days/friday.dart';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:lazy_man/days/monday.dart';
import 'package:lazy_man/days/saturday.dart';
import 'package:lazy_man/days/sunday.dart';
import 'package:lazy_man/days/thursday.dart';
import 'package:lazy_man/days/tuesday.dart';
import 'package:lazy_man/days/wednesday.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // ignore: prefer_const_constructors
        home: Scaffold(
          body: const SafeArea(
            child: MyHomePage(),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateToday =
      DateTime(DateTime.now().day, DateTime.now().month, DateTime.now().year);
  static String main() {
    DateTime date = DateTime.now();
    String dateFormat = DateFormat('EEEE').format(date);
    return dateFormat;
  }
  static String getDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  static var day = main();

  String dropdownValue = day;
  @override
  Widget build(BuildContext context) {
    Widget scheduleDay = const Monday();
    switch (dropdownValue) {
      case 'Monday':
        scheduleDay = const Monday();
        break;
      case 'Tuesday':
        scheduleDay = const Tuesday();
        break;
      case 'Wednesday':
        scheduleDay = const Wednesday();
        break;
      case 'Thursday':
        scheduleDay = const Thursday();
        break;
      case 'Friday':
        scheduleDay = const Friday();
        break;
      case 'Saturday':
        scheduleDay = const Saturday();
        break;
      case 'Sunday':
        scheduleDay = const Sunday();
        break;
      default:
        break;
    }

    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20.0),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Monday',
              'Tuesday',
              'Wednesday',
              'Thursday',
              'Friday',
              'Saturday',
              'Sunday'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,
                    style: const TextStyle(
                        fontSize: 20.0, color: Color(0xFF656565))),
              );
            }).toList(),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            getDate(),
            style: const TextStyle(fontSize: 20.0, color: Color(0xFF656565)),
          ),
        ),
      ]),
      Expanded(child: scheduleDay),
    ]);
  }
}
