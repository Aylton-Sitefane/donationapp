import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/views/intro/register/permition_request_screen.dart';
import 'package:donationapp/views/widgets/costum_button.dart';
import 'package:donationapp/views/widgets/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/login_screen.dart';

class ComplementInfo extends StatelessWidget {
  const ComplementInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColor.appbarColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 5,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                    left: 183,
                    child: SvgPicture.asset(
                      AppVectors.donateHeart,
                      height: 55,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(73),
                      ),
                      child: SvgPicture.asset(
                        AppVectors.profile,
                        fit: BoxFit.cover,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Ação para alterar a foto de perfil
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const CountryPicker(),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 108),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'ZIP code/Postal Code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Bio',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0, right: 48),
                  child: CostumButton(
                    width: 190,
                    height: 70,
                    title: 'Cadastrar perfil',
                    onPressed: () {
                      Navigator.of(context).push(_createRoute(context, const PermitionRequestScreen()));
                    },
                  ),
                ),
                const SizedBox(height: 10),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute(BuildContext context, Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Começa à direita da tela
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
