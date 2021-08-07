import 'package:app/screen/Apps.dart';
import 'package:app/screen/Books.dart';
import 'package:app/screen/Entertainment.dart';
import 'package:app/screen/Favorite.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'drawer.dart';

class Homescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body:  Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/klipartz.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      endDrawer: DrawerWidget(),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

final List<Map<String, dynamic>> navigationItems = [
  {'icon': Icons.movie_creation, 'title': 'Entertainment'},
  {'icon': Icons.menu_book_sharp, 'title': 'Books'},
  {'icon': Icons.apps, 'title': 'Apps'},
  {'icon': Icons.credit_card, 'title': 'Card'},
  {'icon': Icons.favorite, 'title': 'Favorite'},
];

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          for (var item in navigationItems)
            Container(
              height: kBottomNavigationBarHeight + 60,
              width: MediaQuery.of(context).size.width * 0.19,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              Widget widget;
                              switch (item['title']) {
                                case 'Entertainment':
                                  widget = Entertainment();
                                  //StudentCorner();
                                  break;
                                case 'Books':
                                  widget = Books();
                                  break;
                                case 'Apps':
                                  widget = Apps();
                                  break;
                                case 'Cards':
                                  widget = Cards();
                                  break;
                                case 'Favorite':
                                  widget = Favorite();
                                  break;
                              }
                              return widget;
                            },
                          ),
                        );
                      },
                      icon: Icon(
                        item['icon'],
                        size: 35.0,
                        color: Color(0xff3b0040),
                      )),
                  Text(
                    item['title'],
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
