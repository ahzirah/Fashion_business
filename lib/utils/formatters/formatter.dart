import 'package:intl/intl.dart';

class ZFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now(); // Fix assignment
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_UK', symbol: '£').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 12) {
      return '(${phoneNumber.substring(0, 5)}) ${phoneNumber.substring(5, 8)} ${phoneNumber.substring(8)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    } else if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    return phoneNumber;
  }

  // International phone number formatting
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Ensure the number is long enough to have a country code
    if (digitsOnly.length < 3) return phoneNumber; 

    // Dynamically extract country code (assumes first 1-3 digits are the country code)
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    if (digitsOnly.startsWith('1')) {
      countryCode = '+${digitsOnly.substring(0, 1)}'; // Handle US/Canada with +1
      digitsOnly = digitsOnly.substring(1);
    } else {
      digitsOnly = digitsOnly.substring(2);
    }

    // Format remaining digits
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3; // US/Canada format
      }

      int end = i + groupLength;
      if (end > digitsOnly.length) end = digitsOnly.length; 

      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      i = end;
    }

    return formattedNumber.toString(); 
  }
}
