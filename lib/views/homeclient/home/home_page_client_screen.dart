import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/views/homeclient/home/components/institution_list.dart';
import 'package:donationapp/views/homeclient/home/components/social_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageClientScreen extends StatelessWidget {
  const HomePageClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.appbarColor,
        toolbarHeight: 150,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Column(
          children: [
            const SizedBox(height: 70,),
            Row(
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
                    decoration: InputDecoration(
                      labelText: 'Pesquisar...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                const Icon(
                  Icons.logout,
                  color: AppColor.lightBackground,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Instituições',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Ver mais...',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InstitutionList(), // Lista de instituições
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Questões sociais',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    'Ver mais...',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SocialList(),
          ],
        ),
      ),
    );
  }
}
