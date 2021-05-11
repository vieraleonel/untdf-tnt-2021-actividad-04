import 'package:flutter/material.dart';

import 'package:actividad_04/constants.dart';
import 'package:actividad_04/screens/details/widgets/image_and_icons.dart';
import 'package:actividad_04/screens/details/widgets/title_and_price.dart';

class DetailsScreen extends StatelessWidget {
  static const String ROUTE_NAME = 'DETAILS';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageAndIcons(size: size),
            TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
            SizedBox(height: DEFAULT_PADDING),
            DetailsButtons(size: size),
          ],
        ),
      ),
    );
  }
}

class DetailsButtons extends StatelessWidget {
  const DetailsButtons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
              color: PRIMARY_COLOR,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text("Description"),
          ),
        ),
      ],
    );
  }
}
