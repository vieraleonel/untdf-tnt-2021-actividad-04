import 'package:flutter/material.dart';

import 'package:actividad_04/constants.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: DEFAULT_PADDING,
        top: DEFAULT_PADDING / 2,
        bottom: DEFAULT_PADDING / 2,
      ),
      width: size.width * 0.8,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
