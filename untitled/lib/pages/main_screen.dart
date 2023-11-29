import 'dart:js';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // void _menuOpen() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(builder: (BuildContext context) {
  //       return Scaffold(
  //         appBar: AppBar(
  //           title: Text('Menu'),
  //         ),
  //         body: Text('Основное меню'),
  //       );
  //     }),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    void _menuOpen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Menu'),
            ),
            body: Text('Основное меню'),
          );
        }),
      );
    }

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu_outlined),
            onPressed: _menuOpen,
            ),
        ],
      ),
      body: Column(children: [
        Text('MainScreen'),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/todo');
            },
            child: Text('Далее'))
      ]),
    );
  }
}
