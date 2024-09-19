import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/extensions.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/core/config/user_sharedpreferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/costum_button.dart';
import '../../widgets/costum_textfield.dart';

class ClientPageProfileScreen extends StatefulWidget {
  const ClientPageProfileScreen({super.key});


  @override
  State<ClientPageProfileScreen> createState() => _ClientPageProfileScreenState();
}



class _ClientPageProfileScreenState extends State<ClientPageProfileScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context.profileProvider.retrieveSavedAddress();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,

      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: context.profileProvider.addressFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextField(
                            labelText: 'Phone',
                            onSave: (value) {},
                            inputType: TextInputType.number,
                            controller: context.profileProvider.phoneController,
                            validator: (value) => value!.isEmpty ? 'Please enter a phone number' : null,
                          ),
                          CustomTextField(
                            labelText: 'Street',
                            onSave: (val) {},
                            controller: context.profileProvider.streetController,
                            validator: (value) => value!.isEmpty ? 'Please enter a street' : null,
                          ),
                          CustomTextField(
                            labelText: 'City',
                            onSave: (value) {},
                            controller: context.profileProvider.cityController,
                            validator: (value) => value!.isEmpty ? 'Please enter a city' : null,
                          ),
                          CustomTextField(
                            labelText: 'State',
                            onSave: (value) {},
                            controller: context.profileProvider.stateController,
                            validator: (value) => value!.isEmpty ? 'Please enter a state' : null,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  labelText: 'Postal Code',
                                  onSave: (value) {},
                                  inputType: TextInputType.number,
                                  controller: context.profileProvider.postalCodeController,
                                  validator: (value) => value!.isEmpty ? 'Please enter a code' : null,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: CustomTextField(
                                  labelText: 'Country',
                                  onSave: (value) {},
                                  controller: context.profileProvider.countryController,
                                  validator: (value) => value!.isEmpty ? 'Please enter a country' : null,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.appbarColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        context.profileProvider.storeAddress();
                      },
                      child: const Text('Update Address', style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  
  }
}
