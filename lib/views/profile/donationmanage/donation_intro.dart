import 'package:donationapp/core/config/constants.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/views/widgets/costum_button.dart';
import 'package:flutter/material.dart';

class DonationIntro extends StatelessWidget {
  const DonationIntro({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> itemData = Items.items;
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
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Itens para doação',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itemData.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(44),
                    ),
                  ),
                  title: Text(itemData[index].name),
                  subtitle: Text(itemData[index].description),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 88.0, right: 88),
              child: CostumButton(
                title: 'Adicionar',
                onPressed: () {},
              ),
            ),
          ),
          Center(

            child: TextButton(
              onPressed: () {},
              child: Text('Pular', style: TextStyle(fontSize: 18),),
            ),
          ),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}
