import 'package:appv3/models/Shop.dart';
import 'package:appv3/screens/preferiti/favorite_details.dart';
import 'package:flutter/material.dart';

class FavoriteDetails extends StatelessWidget {
  final Shop shop;
  const FavoriteDetails({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      //appBar: buildAppBar(context),
      body: BodyFavoriteDetails(shop: shop),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[800],
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}
