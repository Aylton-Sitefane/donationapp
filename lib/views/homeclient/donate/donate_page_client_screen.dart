import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Donate Page'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorColor: AppColor.primaryColor,
          indicatorWeight: 3.0,
          tabs: const [
            Tab(text: 'Doações feitas'),
            Tab(text: 'Doações recebidas'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Card(
              margin: EdgeInsets.all(16.0),
              child: Center(
                child: Text('Doações feitas'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Center(
                child: Text('Doações recebidas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
