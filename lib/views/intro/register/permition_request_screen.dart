import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/views/profile/donationmanage/donation_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/config/theme/app-color.dart';

class PermitionRequestScreen extends StatelessWidget {
  const PermitionRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
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
                    left: 180,
                    top: 55,
                    child: SvgPicture.asset(
                      AppVectors.donateHeart,
                      height: 55,
                    ),
                  ),
                  const Positioned(
                    left: 50,
                    bottom: 140,
                    child: Column(
                      children: [
                        Text(
                          'As pessoas poderão pedir',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' doações através do App?',
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 150,
                    bottom: 30,
                    child: SizedBox(
                      width: 90,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, _createRoute(context, const DonationIntro()));
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColor.yesbutton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text(
                          "Sim",
                          style: TextStyle(color: AppColor.lightBackground),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 90,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, _createRoute(context, const DonationIntro()));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    "Não",
                    style: TextStyle(),
                  ),
                ),
              ),
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
        const begin = Offset(1.0, 0.0);
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
