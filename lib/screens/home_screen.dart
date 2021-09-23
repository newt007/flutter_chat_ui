import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widgets/category_selector.dart';
import 'package:flutter_chat_ui/widgets/favorite_contact.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          iconSize: 30.0,
          color: Colors.white,
          icon: Icon(Icons.menu),
        ),
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 24.0),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: 30.0,
            color: Colors.white,
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContact(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
