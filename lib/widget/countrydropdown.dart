import 'package:flutter/material.dart';

class CountryDropdown extends StatefulWidget {
  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String? selectedCountry;

  List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    // Add more countries here
    // You can also load country list from a data source
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCountry,
      items: countries.map((String country) {
        return DropdownMenuItem<String>(
          value: country,
          child: Text(country),
        );
      }).toList(),
      onChanged: (String? newValue) {
        // Change the type of newValue to String?
        setState(() {
          selectedCountry = newValue;
        });
      },
      hint: Text('Select Country'),
    );
  }
}
