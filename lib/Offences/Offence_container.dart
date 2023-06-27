import 'package:flutter/material.dart';

import '../CommonWidgets/page_name.dart';

class offenceContainer extends StatelessWidget {
  final List<String> offences;

  String pagename = '';

  offenceContainer({required this.offences});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: offences.map((offence) {
        return GestureDetector(
          onTap: () {
            // Perform an action or update the UI for the selected offence
            pagename = offence.replaceAll(' ', '');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageName().getPageByName(pagename),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              offence,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
