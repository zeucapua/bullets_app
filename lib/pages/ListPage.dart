import 'package:flutter/material.dart';
import 'package:bullets_app/models/Bullet.dart';

class ListPage extends StatefulWidget {
  //--- INSTANCE VARIABLES ---
  ListPageState state;

  ListPage(String title, List<Bullet> list) { state = ListPageState(title, list); }

  @override ListPageState createState() => state;

  void addBullet(Bullet bullet) { state.addBullet(bullet); }
}

class ListPageState extends State<ListPage> {
  //--- INSTANCE VARIABLES ---
  String _title; List<Bullet> _list;

  ListPageState(this._title, this._list);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //TODO: add AlertDialog to change title when tapped on
      appBar: AppBar(title: Text(_title), centerTitle: true,),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: _buildListView(),
        ),
      )

    );
  }


  Widget _buildListView() {

    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {

        Bullet current = _list[index];

        return ListTile(
          leading: GestureDetector(
            onTap: () => setState(() { current.toggleIsCompleted(); }),
            child: current.isCompleted() ? Icon(Icons.check) : Icon(Icons.radio_button_unchecked),
          ),

          //TODO: add AlertDialog to change note when tapped on
          title: Text(current.getNote()),
          subtitle: current.getDesc() != null ? Text(current.getDesc()) : null,
        );


      },
    );


  }

  void addBullet(Bullet bullet) { setState(() { _list.add(bullet); }); }
}