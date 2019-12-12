import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  Widget _buildSearchBar() {
    return Card(
      // shape: StadiumBorder(),
      elevation: 3,
      margin: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.only(right: 16, left: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu),
            SizedBox(
              width: 8,
            ),
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search mail', border: InputBorder.none),
            )),
            CircleAvatar(
              // radius: 20,
              backgroundImage: NetworkImage(
                'https://st2.depositphotos.com/4967775/11323/v/950/depositphotos_113235752-stock-illustration-avatar-girls-icon-vector-woman.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
      3,
      (int index) => ListTile(
        leading: Icon(Icons.group),
        title: Text('Email $index'),
        subtitle: Text('subject'),
        trailing: Chip(
          backgroundColor: Colors.green,
          label: Text(
            '26 new',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    items.addAll(List.generate(
      10,
      (int index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://st2.depositphotos.com/4967775/11323/v/950/depositphotos_113235752-stock-illustration-avatar-girls-icon-vector-woman.jpg'),
          ),
          title: Text('Email $index'),
          subtitle: Text('subject'),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[Text('2:13 PM'), Icon(Icons.star)],
          )),
    ));

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              _buildSearchBar(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('PRIMARY'),
              ),
              for (Widget _child in items) _child,
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
