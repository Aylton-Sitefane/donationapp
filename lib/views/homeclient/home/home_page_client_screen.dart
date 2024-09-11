import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageClientScreen extends StatelessWidget {
  const HomePageClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColor.appbarColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  AppVectors.donateHeart,
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 240,
                  decoration: BoxDecoration(
                    color: AppColor.lightBackground,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(labelText: 'Pesquisar...'),
                  ),
                ),
                const Icon(
                  Icons.logout,
                  color: AppColor.lightBackground,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Instituicoes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'Ver mais...',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),

        ],
      ),
    );
  }
  }
