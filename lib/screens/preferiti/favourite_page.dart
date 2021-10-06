import 'package:appv3/screens/preferiti/bodyFavorite.dart';

import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyFavorite(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.greenAccent[400],
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        "Favorite",
      ),
    );
  }
}
