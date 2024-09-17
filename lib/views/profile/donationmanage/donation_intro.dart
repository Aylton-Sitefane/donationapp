import 'package:donationapp/core/config/constants.dart';
import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/model/product/product.dart';
import 'package:donationapp/views/homeclient/home_client.dart';
import 'package:donationapp/views/profile/product/add_product_screen.dart';
import 'package:donationapp/views/widgets/costum_button.dart';
import 'package:flutter/material.dart';

class DonationIntro extends StatelessWidget {

  const DonationIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          Container(
            height: 300,
            child: ListView.builder(
              
              itemCount: Product.productList.length,
              itemBuilder: (BuildContext context, int index) {
                final product = Product.productList[index];
                return ListTile(
                  
                  leading: Container(
                    height: 350,
                    width: 70,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(44),
                    ),
                  ),
                  title: Text(product.name ?? 'Nome do produto'),
                  subtitle: Text(product.description ?? 'Descricao do'),
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
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 88.0, right: 88),
              child: CostumButton(
                height: 60,
                title: 'Adicionar',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AddProductScreen(),),);
                },
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 88.0, right: 88),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeClient(),),);
                },
                child: const Text(
                  'Pular',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),

              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
