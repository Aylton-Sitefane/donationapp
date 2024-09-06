import 'package:flutter/material.dart';
import 'package:csc_picker/csc_picker.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({super.key});

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  String countryValue = "";
  String cityValue = "";
  String stateValue = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: CSCPicker(

          flagState: CountryFlag.ENABLE,
          disabledDropdownDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          dropdownDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          dropdownHeadingStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          showCities: true,
          showStates: true,
          searchBarRadius: 50,
          defaultCountry: CscCountry.Mozambique,
          countryDropdownLabel: countryValue,
          onCountryChanged: (value) {
            setState(() {
              countryValue = value;
            });
          },
          onCityChanged: (city) {
            setState(() {
              cityValue = city ?? '';
              print(cityValue);
            });
          },
          onStateChanged: (value){
            setState(() {
              stateValue = value ?? '';
              print(stateValue);
            });
          },
        ),
    );
  }
}