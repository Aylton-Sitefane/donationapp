import 'package:donationapp/core/config/user_sharedpreferences.dart';
import 'package:donationapp/core/data/data_provider.dart';
import 'package:donationapp/views/widgets/snack_bar_helper.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier{
  final DataProvider _dataProvider;
 final box = UserSharedpreferences();
 
 

 final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();
 TextEditingController phoneController = TextEditingController();
 TextEditingController streetController = TextEditingController();
 TextEditingController cityController = TextEditingController();
 TextEditingController stateController = TextEditingController();
 TextEditingController postalCodeController = TextEditingController();
 TextEditingController countryController = TextEditingController();
 TextEditingController couponController = TextEditingController();

  ProfileProvider(this._dataProvider) {
  retrieveSavedAddress();
 }

 void storeAddress() {
  UserSharedpreferences.setUserName(phoneController.text);
  UserSharedpreferences.setPhone(phoneController.text);
  UserSharedpreferences.setCity(cityController.text);
  UserSharedpreferences.setStreet(streetController.text);
  UserSharedpreferences.setState(stateController.text);
  UserSharedpreferences.setPostalCode(postalCodeController.text);
  UserSharedpreferences.setCountry(countryController.text);
  // box.write(PHONE_KEY, phoneController.text);
  // box.write(STREET_KEY, streetController.text);
  // box.write(CITY_KEY, cityController.text);
  // box.write(STATE_KEY, stateController.text);
  // box.write(POSTAL_CODE_KEY, postalCodeController.text);
  // box.write(COUNTRY_KEY, countryController.text);
 // SnackBarHelper.showSuccessSnackBar('Address Stored Successfully');
 }

// Method to retrieve saved address values
 void retrieveSavedAddress() {
  phoneController.text = UserSharedpreferences.getPhone() ?? '';
  streetController.text = UserSharedpreferences.getStreet() ?? '';
  cityController.text = UserSharedpreferences.getCity() ?? '';
  stateController.text = UserSharedpreferences.getState() ?? '';
  postalCodeController.text = UserSharedpreferences.getPostalCode() ?? '';
  countryController.text = UserSharedpreferences.getCountry() ?? '';
 }
}