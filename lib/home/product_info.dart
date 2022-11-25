import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ProductInfo extends StatelessWidget {
  final Game game;

  const ProductInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 10, 10),
            child: Icon(CupertinoIcons.delete),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Image.asset(game.url, width: 200, height: 94),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(game.title),
              const SizedBox(
                height: 10,
              ),
              Text("${game.price} TND", textScaleFactor: 2)
            ],
          )
        ],
      ),
    );
  }
}
