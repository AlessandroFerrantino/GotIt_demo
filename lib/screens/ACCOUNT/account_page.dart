//import 'package:appv3/models/Users.dart';
import 'package:appv3/screens/ACCOUNT/bodyaccount.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyAccount(),
    );
  }
}
