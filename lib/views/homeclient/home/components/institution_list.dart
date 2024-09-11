import 'package:donationapp/views/homeclient/home/components/institution_list_item.dart';
import 'package:flutter/material.dart';


class InstitutionList extends StatelessWidget {
  const InstitutionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: institutions.length,
        itemBuilder: (context, index) {
          final institution = institutions[index];
          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: InstitutionListItem(
              country: institution.place,
              name: institution.name,
              imageUrl: institution.imageUrl,
            ),
          );
        },
      ),
    );
  }
}
