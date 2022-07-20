import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List patients = [
    {'name': "Patient 1", 'isAlive': true},
    {'name': "Patient 2", 'isAlive': false},
    {'name': null, 'isAlive': true}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Column(
        children: patients.map((patient) {
          return showPatientData(patient);
        }).toList(),
      ),
    );
  }

  Widget showPatientData(patient) {
    return ListTile(
        title: patient['name'] == null
            ? SizedBox()
            : Text(
                patient['name'],
                style: TextStyle(
                    color: patient['isAlive'] ? Colors.green : Colors.red),
              ),
        subtitle: Text(
          patient['isAlive'] ? "Yes" : "No",
        ));
  }
}
