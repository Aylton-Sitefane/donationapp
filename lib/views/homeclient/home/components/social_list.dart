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
          SizedBox(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.people, height: 100,width: 60,),
                const Text('Pessoas', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.church, height: 100,width: 60,),
                const Text('Igrejas', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: width,
            child: Column(
              children: [
                // ignore: deprecated_member_use
                SvgPicture.asset(AppVectors.nature, height: 100,width: 60, color: AppColor.primaryColor,),
                const Text('Natureza', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: width,
            child: Column(
              children: [
                SvgPicture.asset(AppVectors.school, height: 100,width: 60,),
                const Text('Escolas', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
