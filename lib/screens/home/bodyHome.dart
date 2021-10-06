import 'package:appv3/models/Shop.dart';
import 'package:appv3/screens/pagine_dettaglio/details_screen.dart';
import 'package:flutter/material.dart';
import 'home_card.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: shopsData.length,
            itemBuilder: (context, index) => ShopCard(
              shop: shopsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    shop: shopsData[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
