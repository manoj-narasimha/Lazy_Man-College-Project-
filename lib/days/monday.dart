// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:core';

var groupColor = Color(0xffefefef);
var cardColor = Color.fromARGB(255, 15, 171, 127);

class Monday extends StatelessWidget {
  const Monday({Key? key}) : super(key: key);
  // Card Template

  Widget cardTemplate(String subject, String time, String subcode) {
    return Card(
      color: cardColor,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: RaisedButton(
        color: cardColor,
        // height: 50.0,
        // minWidth: 500.0,
        onPressed: () {},
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(10.0, 0.5, 10.0, 0.5),
          leading: Container(
            padding: const EdgeInsets.all(7.0),
            width: 50.0,
            height: 50.0,
            color: Colors.cyan,
            child: Text(
              subcode,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21.0, 
                color: groupColor,
                fontWeight: FontWeight.bold,
                height: 1.5
              ),
            ),
          ),
          title: Text(
            subject,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0, 
              color: groupColor,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Text(
            time,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 203, 203, 203)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.black,
            ),
            cardTemplate('Communication Theory', '08:10AM - 09:10AM','D'),
            cardTemplate('Transmission Lines', '09:10AM - 10:10AM','C'),
            cardTemplate('Optimization Techniques', '10:35AM - 11:35AM','M'),
            cardTemplate('Technical', '11:35AM - 12:30PM','CIR'),
            cardTemplate('LIC-Lab', '01:30PM - 02:30PM','LAB'),
            cardTemplate('LIC-Lab', '02:30PM - 03:30PM','LAB'),
          ],
        ),
      ),
    );
  }
}
