import 'package:appv3/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.shop,
    required this.press,
  }) : super(key: key);
  final Shop shop;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(shop.image),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 55, left: 40, right: 40),
          child: Column(
            children: [
              Container(
                height: 100,
                child: Center(
                  child: Text(
                    shop.name,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent[400],
                      //color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    shop.via,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 460),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextButton(
                  onPressed: press,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Text(
                      'DETTAGLI',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
