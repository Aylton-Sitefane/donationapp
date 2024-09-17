import 'package:donationapp/core/config/theme/app-color.dart';
import 'package:flutter/material.dart';

@immutable
// ignore: must_be_immutable
class ListProgressItem extends StatelessWidget {
  String name;
  String quantity;
  bool progress;
  ListProgressItem(
      {super.key,
      required this.name,
      required this.quantity,
      required this.progress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(44),
        ),
      ),
      title: Text(name),
      subtitle: Text('Quantidade $quantity'),
      trailing: (progress == false) ? const Text('Prossecing...') : const Text('Cecked'),
    );
  }
}
