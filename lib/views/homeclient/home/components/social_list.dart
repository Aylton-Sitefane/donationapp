import 'package:donationapp/core/config/assets/app_vectors.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 150;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.people, height: 100,width: 60,),
                Text('Pessoas'),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.church, height: 100,width: 60,),
                Text('Igrejas'),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.nature, height: 100,width: 60, color: AppColor.primaryColor,),
                Text('Natureza'),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.school, height: 100,width: 60,),
                Text('Escolas'),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
