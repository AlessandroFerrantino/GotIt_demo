import 'package:appv3/screens/ACCOUNT/account_page.dart';

import 'package:appv3/screens/home/home_page.dart';
import 'package:appv3/screens/chats/components/message_page.dart';
import 'package:appv3/screens/preferiti/favourite_page.dart';
//import 'package:appv3/screens/message/message_detail.dart';
import 'package:appv3/screens/search_page.dart';
//import 'package:appv3/screens/pagine_dettaglio/details_screen.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GotIT',
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        primaryColorLight: Color(0xFFFBE0E6),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF1B1F32)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          //MessagesScreen(), //per verificare se funziona
          //per verificare se funziona
          HomePage(),
          MessagePage(),
          SearchPage(),
          FavouritePage(),
          AccountPage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        //padding: EdgeInsets.all(10.0),
        child: ClipRRect(
          /*borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),*/
          child: Container(
            height: 70,
            color: Colors.grey[900],
            child: TabBar(
              labelColor: Colors.greenAccent[400],
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 35.0,
                  ),
                  //text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.chat,
                    size: 35.0,
                  ),
                  //text: 'Department',
                ),
                Tab(
                  icon: Icon(
                    Icons.assistant_navigation,
                    size: 35.0,
                  ),
                  //text: 'Cart',
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 35.0,
                  ),
                  //text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_rounded,
                    size: 35.0,
                  ),
                  //text: 'More',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
