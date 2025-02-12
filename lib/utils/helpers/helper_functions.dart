
import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ZHelperFunctions {
  static Color? getColor (String value) {

    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'brown':
        return Colors.brown;
      case 'cyan':
        return Colors.cyan;
      case 'orange':
        return Colors.orange;
      case 'teal':
        return Colors.teal;
      case 'lime':
        return Colors.lime;
      case 'indigo':
        return Colors.indigo;
      default:
        return null; 
    }
  }

  static void showSnackBar (String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert (String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MM YYYY'}) {
    return DateFormat(format).format(date);
  }

  static List<Z> removeDuplicates<Z>(List<Z> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widget, int rowSize) {
    final wrappedList = <Widget> [];
    for (var i = 0; i < widget.length; i += rowSize) {
      final rowChildren = widget.sublist(i, i + rowSize > widget.length ? widget.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }


}