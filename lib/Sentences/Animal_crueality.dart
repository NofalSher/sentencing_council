import 'package:flutter/material.dart';
import 'package:sentencing_council/CommonWidgets/appbar.dart';

import '../CommonWidgets/CommonDrawer.dart';
import '../CommonWidgets/CommonTextWidget.dart';

class AnimalCrueality extends StatelessWidget {
  const AnimalCrueality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: MyAppbar(text: 'AnimalCrueality')),
      drawer: CommonDrawer(),
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
                  CommonTextWidget(
                      text: 'Animal Crueality Sentences', normal: false),
                  SizedBox(height: 10),
                  CommonTextWidget(
                      text:
                          'Animal Welfare Act 2006, s.4 (unnecessary suffering), s.5 (mutilation), s.6 (docking of dogs’ tails), s.7 (administration of poisons etc), s.8 (fighting etc'
                          ' Effective from: 01 July 2023 ',
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
              child: const Column(
                children: [
                  CommonTextWidget(
                      text: 'Step1 Determining the offence category',
                      normal: false),
                  SizedBox(height: 20),
                  CommonTextWidget(
                      text:
                          'The court should determine culpability and harm caused with reference only to the factors below. Where an offence does not fall squarely into a category, individual factors may require a degree of weighting before making an overall assessment and determining the appropriate offence category.',
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
              child: const Column(
                children: [
                  CommonTextWidget(
                      text: 'Step1 Determining the offence category',
                      normal: false),
                  SizedBox(height: 20),
                  CommonTextWidget(
                      text:
                          'The court should determine culpability and harm caused with reference only to the factors below. Where an offence does not fall squarely into a category, individual factors may require a degree of weighting before making an overall assessment and determining the appropriate offence category.',
                      normal: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
