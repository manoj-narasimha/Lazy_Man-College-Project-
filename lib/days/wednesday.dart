// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter/widgets.dart';

var groupColor = Color(0xffefefef);
var cardColor = Color.fromARGB(255, 15, 171, 127);

class Wednesday extends StatelessWidget {
  const Wednesday({Key? key}) : super(key: key);
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
            padding: EdgeInsets.all(7.0),
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
                height: 1.5,
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
            cardTemplate('Optimization Techniques', '08:10AM - 09:10AM','M'),
            cardTemplate('Linear Integrated Circuits', '09:10AM - 10:10AM','B'),
            cardTemplate('Pending Lab', '10:35AM - 11:35AM','ES-LAB'),
            cardTemplate('Pending Lab', '11:35AM - 12:30PM','ES-LAB'),
            cardTemplate('Communication Theory', '01:30PM - 02:30PM','D'),
            cardTemplate('Digital Processing', '02:30PM - 03:30PM','A'),
          ],
        ),
      ),
    );
  }
}
