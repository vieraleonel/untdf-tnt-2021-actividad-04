import 'package:flutter/material.dart';

import 'package:actividad_04/screens/home_child_props/featured_plant_card.dart';

class FeaturedPlantsList extends StatelessWidget {
  const FeaturedPlantsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
          ),
        ],
      ),
    );
  }
}
