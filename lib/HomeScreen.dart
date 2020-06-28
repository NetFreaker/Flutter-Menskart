import 'package:flutter/material.dart';
import 'package:flutter_app/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
          color: Colors.white),
      actions: <Widget>[
        IconButton(
          icon: Image.asset("assets/icons/cart.png", color: Colors.white),
          onPressed: () {},
          color: Colors.white,
        ),
      ],
    );
  }
}
