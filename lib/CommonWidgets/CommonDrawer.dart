import 'package:flutter/material.dart';
import 'package:sentencing_council/Home.dart';
import 'package:sentencing_council/Offences/ALL_offences.dart';

import 'CommonTextWidget.dart';
import 'contact_Us.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 55, 97),
            ),
            child: Center(
              child: Text(
                'Sentencing Search',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            title: const CommonTextWidget(text: 'Home', normal: false),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          ListTile(
            title: const CommonTextWidget(text: 'All Offences', normal: false),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AllOffences()));
            },
          ),
          ListTile(
            title: const CommonTextWidget(text: 'Get Help', normal: false),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()));
            },
          ),
        ],
      ),
    );
  }
}
