import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:donationapp/views/homeclient/donate/done/donation_completed_list.dart';
import 'package:donationapp/views/homeclient/donate/progress/donation_progress_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/config/assets/app_vectors.dart';

class DonatePageClientScreen extends StatefulWidget {
  const DonatePageClientScreen({super.key});

  @override
  State<DonatePageClientScreen> createState() => _DonatePageClientScreenState();
}

class _DonatePageClientScreenState extends State<DonatePageClientScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
            const SizedBox(height: 70),
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
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(child: SizedBox(width: 120,child: Center(child: Text('Doacoes feitas', style: TextStyle(fontWeight: FontWeight.bold,),))),),
            Tab(child: SizedBox(width: 150,child: Center(child: Text('Doacoes recebidas', style: TextStyle(fontWeight: FontWeight.bold),))),),
          ],
          indicator: BoxDecoration(
    color:AppColor.lightBackground,
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), // Borda arredondada
    boxShadow: [
       
      BoxShadow(
        
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 1,
        blurRadius: 5,
        offset: const Offset(0, 2), // Posição da sombra
      ),
    ],
  ),
  //labelColor: Colors.white,
  unselectedLabelColor: Colors.grey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Card(
            child: DonationProgressList(),
          ),
          Card(
            child: DonationCompletedList(),
          ),
        ],
      ),
    );
  }
}
