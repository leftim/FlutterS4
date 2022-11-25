import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:workshop_4sim2223/home/product_info.dart';
import 'package:workshop_4sim2223/product_details.dart';

import 'home/home.dart';

class Panier extends StatefulWidget {
  const Panier();

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  final List<Game> games = [];

  @override
  void initState() {
    games.add(Game("assets/images/dmc5.jpg", "Devil May Cry 5",
        price: 200, quantity: 3000));
    games.add(Game("assets/images/re8.jpg", "Resident Evil VIII",
        price: 200, quantity: 3000));
    games.add(Game("assets/images/nfs.jpg", "Need For Speed Heat",
        price: 100, quantity: 3000));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Panier"),
        ),
        body: ListView.builder(
          itemCount: games.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [ProductInfo(games[index])],
            );
          },
        ));
  }
}
