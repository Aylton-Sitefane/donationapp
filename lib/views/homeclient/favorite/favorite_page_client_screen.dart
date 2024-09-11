import 'package:donationapp/views/homeclient/favorite/components/favorit_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/config/assets/app_vectors.dart';
import '../../../core/config/theme/app-color.dart';

class FavoritePageClientScreen extends StatelessWidget {
  const FavoritePageClientScreen({super.key});

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
                      hintText: 'Pesquisar...',
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
      body: Column(
        children: [
          FavoritList(),
        ],
      ),

    );
  }
}
