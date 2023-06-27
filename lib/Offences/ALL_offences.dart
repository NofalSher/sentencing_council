import 'package:flutter/material.dart';
import 'package:sentencing_council/CommonWidgets/appbar.dart';

import '../CommonWidgets/CommonDrawer.dart';
import '../CommonWidgets/CommonTextWidget.dart';
import '../CommonWidgets/common_bottom_navigator.dart';
import 'Offence_container.dart';

class AllOffences extends StatelessWidget {
  final List<String> offences = [
    'Animal Crueality',
    'Criminal Demage',
    'Assault offences',
    'Bladed Articles',
    'offences weapons',
    'Breach Offences',
    'Burglary offences',
    'Causing death by driving',
    'Child Cruelaity',
    'Dangerous Dog offence',
    'Drug offence',
    'Environmental offence',
    'Firesarm offence'

    // Add more offenses here
  ];
  AllOffences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80.0), // Adjust the height as needed
          child: MyAppbar(
            text: 'ALL Offences',
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
              child: const Column(
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
            offenceContainer(
              offences: offences,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonNavigator(),
    );
  }
}
