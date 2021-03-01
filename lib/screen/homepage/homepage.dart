import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scan_app/screen/homepage/item_template.dart';
import 'package:scan_app/screen/scanpage.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  static dynamic prodotti;
  static List recenti = [];
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
          for (var text in recenti)
            Card(
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          ItemTemplate());
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(text),
                    ],
                  ),
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
            if (result != null) {
              setState(() {
                prodotti = result.code;
                recenti.add('${result.code}');
                showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        ItemTemplate());
              });
              print("OOOOOOOOOOOOOO ${result.code}");
            }
          },
          child: Icon(Icons.camera_alt_outlined)),
    );
  }
}
