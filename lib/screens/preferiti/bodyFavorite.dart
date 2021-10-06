import 'package:appv3/screens/preferiti/favorite_card.dart';
//import 'package:appv3/screens/preferiti/favorite_details.dart';
import 'package:appv3/screens/preferiti/favorite_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:appv3/models/Shop.dart';

class BodyFavorite extends StatelessWidget {
  const BodyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[850],
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: shopsData.length,
              itemBuilder: (context, index) => FavoriteCard(
                shop: shopsData[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteDetails(
                      shop: shopsData[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
