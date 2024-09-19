import 'package:donationapp/core/data/data_provider.dart';
import 'package:donationapp/views/homeclient/profile/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension Providers on BuildContext {
  DataProvider get dataProvider => Provider.of<DataProvider>(this, listen: false);
  ProfileProvider get profileProvider => Provider.of<ProfileProvider>(this, listen: false); 
}