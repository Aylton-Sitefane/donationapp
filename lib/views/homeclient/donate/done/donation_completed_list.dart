import 'package:donationapp/views/homeclient/donate/list_progress_item.dart';
import 'package:flutter/widgets.dart';

import '../../../../model/product/product.dart';

class DonationCompletedList extends StatelessWidget {
  const DonationCompletedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Product.productList.length,
      itemBuilder: (context, index) {
        final product = Product.productList[index];
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ListProgressItem(
            name: product.name ?? '',
            progress: product.deliver ?? false,
            quantity: product.quantity ?? '',
          ),
        );
      },
    );
  }
}
