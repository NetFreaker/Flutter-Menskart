import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_app/Product.dart';
import 'package:flutter_app/const.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.size,
    this.itemIndex,
    this.product,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: product.color,
                boxShadow: [kDefaultShadow]),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Transform.rotate(
                angle: -math.pi / 7,
                child: Image(
                  width: 200,
                  image: AssetImage(product.image),
                )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding, vertical: kDefaultPadding),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding / 4,
                    ),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22))),
                    child: Text(
                      '\$${product.price}',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
