import 'package:flutter/material.dart';
import 'package:sentencing_council/Home.dart';
import 'package:sentencing_council/Sentences/Animal_crueality.dart';

class PageName {
  Widget getPageByName(String className) {
    switch (className) {
      case 'AnimalCrueality':
        return AnimalCrueality();
      case 'Emily':
        return MyHomePage();
      case 'Michael':
        return MyHomePage();
      case 'Sarah':
        return MyHomePage();
      case 'David':
        return MyHomePage();
      default:
        return MyHomePage();
    }
  }
}
