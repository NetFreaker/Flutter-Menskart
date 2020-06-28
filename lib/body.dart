import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Product.dart';
import 'package:flutter_app/ProductCard.dart';
import 'package:flutter_app/categorylist.dart';
import 'package:flutter_app/const.dart';
import 'package:flutter_app/headerwithsearchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard(
                          size: size,
                          itemIndex: index,
                          product: products[index],
                        )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
