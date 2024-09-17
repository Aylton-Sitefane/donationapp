import 'package:donationapp/model/institution/institution.dart';
import 'package:donationapp/views/homeclient/favorite/components/favorite_list_item.dart';
import 'package:flutter/material.dart';

class FavoritList extends StatelessWidget {
  const FavoritList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: institutions.length,
        itemBuilder: (context, index) {
          final favorite = institutions[index];
          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: SizedBox(
              height: 160,
              child: FavoriteListItem(
                country: favorite.place,
                name: favorite.name,
                imageUrl: favorite.imageUrl,
              ),
            ),

          );

        },

      ),
    );
  }
}
