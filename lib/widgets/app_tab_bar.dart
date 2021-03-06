import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:actividad_04/constants.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: DEFAULT_PADDING,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: PRIMARY_COLOR.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg",
                color: PRIMARY_COLOR),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/heart-icon.svg",
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
