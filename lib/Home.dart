import 'package:flutter/material.dart';
import 'package:sentencing_council/CommonWidgets/CommonTextWidget.dart';
import 'package:sentencing_council/Offences/ALL_offences.dart';

import 'CommonWidgets/CommonDrawer.dart';
import 'CommonWidgets/appbar.dart';
import 'CommonWidgets/common_bottom_navigator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80.0), // Adjust the height as needed
          child: MyAppbar(
            text: 'Sentencing Council',
          )),
      drawer: const CommonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  CommonTextWidget(text: 'Welcome !', normal: false),
                  SizedBox(height: 10),
                  CommonTextWidget(
                      text:
                          'We’ve compiled sources for the main, routinely produced statistical publications on crime and justice from the major government departments, including Ministry of Justice, the Home Office and the Office for National Statistics.',
                      normal: true),
                  CommonTextWidget(
                      text:
                          'We’ve compiled sources for the main, routinely produced statistical publications on crime and justice from the major government departments, including Ministry of Justice, the Home Office and the Office for National Statistics.',
                      normal: true),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  CommonTextWidget(text: 'Offences', normal: false),
                  SizedBox(height: 20),
                  CommonTextWidget(
                      text:
                          'This app had enlisted almost all majors kinds of offences being made. We will help you understand sentences for particular offences',
                      normal: true),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .red; // Color when the button is pressed
                              }
                              if (states.contains(MaterialState.hovered)) {
                                return Colors
                                    .blue; // Color when the button is hovered
                              }
                              return Colors.green; // Default color
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Search Offence'),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors
                                    .red; // Color when the button is pressed
                              }
                              if (states.contains(MaterialState.hovered)) {
                                return Colors
                                    .blue; // Color when the button is hovered
                              }
                              return Colors.green; // Default color
                            },
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllOffences()));
                        },
                        child: Text('All Offences'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonNavigator(),
    );
  }
}
