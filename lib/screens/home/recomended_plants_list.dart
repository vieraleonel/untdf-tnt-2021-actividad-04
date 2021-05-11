import 'package:actividad_04/data/models/plant.dart';
import 'package:actividad_04/data/repositories/plant_reposotory.dart';
import 'package:actividad_04/routes.dart';
import 'package:flutter/material.dart';

import 'package:actividad_04/screens/home/recomended_plants_card.dart';

class RecomendedPlantsList extends StatelessWidget {
  const RecomendedPlantsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * EJEMPLO CON LISTA ESTÁTICA DE DATOS
     */
    // List<Plant> plants = PlantRepository().getAll();
    // return Container(
    //   height: 304,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: plants.length,
    //       itemBuilder: (context, index) {
    //         return RecomendedPlantCard(
    //           image: plants[index].image,
    //           title: plants[index].title,
    //           country: plants[index].country,
    //           price: plants[index].price,
    //           press: () {
    //             Navigator.pushNamed(context, ROUTE_NAMES['DETAILS']);
    //           },
    //         );
    //       }),
    // );
  }
}

// <Widget>[
//           RecomendedPlantCard(
//             image: "assets/images/image_1.png",
//             title: "Samantha",
//             country: "Russia",
//             price: 440,
//             press: () {
//               Navigator.pushNamed(context, ROUTE_NAMES['DETAILS']);
//             },
//           ),
//           RecomendedPlantCard(
//             image: "assets/images/image_2.png",
//             title: "Angelica",
//             country: "Russia",
//             price: 440,
//             press: () {
//               Navigator.pushNamed(context, ROUTE_NAMES['DETAILS']);
//             },
//           ),
//           RecomendedPlantCard(
//             image: "assets/images/image_3.png",
//             title: "Samantha",
//             country: "Russia",
//             price: 440,
//             press: () {
//               Navigator.pushNamed(context, ROUTE_NAMES['DETAILS']);
//             },
//           ),
//         ],
