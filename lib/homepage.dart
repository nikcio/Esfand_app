import 'package:esfandapp/widgets/cardList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'globalValues.dart';
import 'navigation.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  List<Widget> notFullscreen = [
    Center(
      child: Image(
        image: NetworkImage('https://static-cdn.jtvnw.net/jtv_user_pictures/476ee93d-66a6-4e57-b3a9-db1ceb168ad8-profile_image-70x70.png'),
      ),
    ),
    Expanded(
        child: CardList()
    )
  ];

  List<Widget> fullscreen = [
    Expanded(
      child: CardList(),
    )
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
              children: isFullscreen ? fullscreen : notFullscreen
          ),
          bottomNavigationBar: isFullscreen ? null : BottomNav()
      ),
    );
  }
}