import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:actividad_04/constants.dart';

class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Container(
      margin: EdgeInsets.only(
        left: DEFAULT_PADDING,
        top: DEFAULT_PADDING / 2,
        bottom: DEFAULT_PADDING * 2.5,
      ),
      width: (orientation == Orientation.landscape ? size.height : size.width) *
          0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(DEFAULT_PADDING / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: PRIMARY_COLOR.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: PRIMARY_COLOR.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: PRIMARY_COLOR),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardRecommended extends StatelessWidget {
  const CardRecommended({
    Key key,
    this.name,
    this.imageUrl,
    this.origin,
    this.price,
  }) : super(key: key);

  final String name;
  final String imageUrl;
  final String origin;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Container(
          width: 150,
          height: 150,
          child: Image.network(this.imageUrl),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text(this.name), Text(this.origin)],
              ),
              Text('\$' + this.price.toStringAsFixed(0))
            ],
          ),
        ),
      ],
    ));
  }
}
