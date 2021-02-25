import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scan_app/models/qrModel.dart';

class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Prodotti vari'),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Prodotti vari'),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Prodotti vari'),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Prodotti vari'),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text('Prodotti vari'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            dynamic result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QrViewExample()));
            print("OOOOOOOOOOOOOO ${result.code}");
          },
          child: Icon(Icons.camera_alt_outlined)),
    );
  }
}
