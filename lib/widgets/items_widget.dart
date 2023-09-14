import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});
  final List img = [
    'Latte',
    'Espresso' 'Black Coffee',
    'cold coffee',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++) Container(),
      ],
    );
  }
}
