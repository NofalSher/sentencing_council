import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

class APICaller {
  static Future<void> fetchData() async {
    // Replace the URL with the specific page you want to scrape
    String url = 'https://www.sentencingcouncil.org.uk/outlines/';

    // Fetch the HTML content of the page
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // Parse the HTML content
      var document = parser.parse(response.body);

      // Extract specific data from the parsed document
      // Modify the code below based on the structure of the Sentencing Council website

      // Example: Extract all <a> tags from the document
      List<Element> linkElements = document.getElementsByTagName('a');
      for (var linkElement in linkElements) {
        print(linkElement.text);
      }

      // Example: Extract specific data from a table
      var tableElement = document.getElementById('table-id');
      if (tableElement != null) {
        var rows = tableElement.getElementsByTagName('tr');
        for (var row in rows) {
          var cells = row.getElementsByTagName('td');
          for (var cell in cells) {
            print(cell.text);
          }
        }
      }
    } else {
      print('Failed to fetch the webpage');
    }
  }
}
