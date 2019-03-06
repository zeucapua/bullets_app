import 'package:flutter/material.dart';
import 'package:bullets_app/pages/ListPage.dart';
import 'package:bullets_app/models/Bullet.dart';

class MainPage extends StatefulWidget { @override MainPageState createState() => MainPageState(); }

class MainPageState extends State<MainPage> {

  //--- INSTANCE VARIABLES ---
  PageView pageView; PageController controller;
  int currentPage; List<ListPage> pageList;

  @override
  void initState() {
    super.initState();
    currentPage = 0;

    List<Bullet> startingList = List<Bullet>();
    startingList.add(Bullet('Breathe'));
    startingList.add(Bullet('Exhale'));

    ListPage startingPage = ListPage('First things to DO', startingList);

    pageList = List<ListPage>(); pageList.add(startingPage);

    //TODO: find way to keep states of pages between navigation
    controller = PageController(initialPage: currentPage);


    //TODO: save and open lists to and from storage
    pageView = PageView(
      controller: controller,
      children: pageList,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pageView,

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      //TODO: add BottomNav with Add List and Extra Functions (delete all completed, toggle theme, etc.)

    );
  }


}