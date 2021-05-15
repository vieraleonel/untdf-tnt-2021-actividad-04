import 'package:actividad_04/constants.dart';
import 'package:actividad_04/data/models/plant.dart';
import 'package:actividad_04/data/repositories/plant_reposotory.dart';
import 'package:actividad_04/routes.dart';
import 'package:flutter/material.dart';

import 'package:actividad_04/screens/home/recomended_plants_card.dart';

class RecomendedPlantsList extends StatelessWidget {
  const RecomendedPlantsList({
    Key key,
    @required this.plants,
  }) : super(key: key);

  final List<Plant> plants;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 304,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: plants.length,
          itemBuilder: (context, index) {
            return RecomendedPlantCard(
              image: plants[index].image,
              title: plants[index].title,
              country: plants[index].country,
              price: plants[index].price,
              press: () {
                Navigator.pushNamed(context, ROUTE_NAMES['DETAILS']);
              },
            );
          }),
    );
  }
}

// class _RecomendedPlantsListState extends State<RecomendedPlantsList> {
//   PlantRepository _plantRepository = PlantRepository();
//   String _valorTexto = "";

//   @override
//   Widget build(BuildContext context) {
//     // return Column(
//     //   children: [
//     //     TextField(
//     //       onChanged: (value) {
//     //         this.setState(() {
//     //           _valorTexto = value;
//     //         });
//     //       },
//     //       decoration: InputDecoration(
//     //         hintText: "Search",
//     //         hintStyle: TextStyle(
//     //           color: PRIMARY_COLOR.withOpacity(0.5),
//     //         ),
//     //       ),
//     //     ),
//     //     Container(
//     //         height: 304,
//     //         child: FutureBuilder<List<Plant>>(
//     //           future: this._plantRepository.getFilteredAsync(_valorTexto),
//     //           builder: (BuildContext context, snapshot) {
//     //             if (snapshot.hasData) {
//     //               return ListView.builder(
//     //                   scrollDirection: Axis.horizontal,
//     //                   itemCount: snapshot.data.length,
//     //                   itemBuilder: (context, index) {
//     //                     return RecomendedPlantCard(
//     //                       image: snapshot.data[index].image,
//     //                       title: snapshot.data[index].title,
//     //                       country: snapshot.data[index].country,
//     //                       price: snapshot.data[index].price,
//     //                       press: () {
//     //                         Navigator.pushNamed(
//     //                             context, ROUTE_NAMES['DETAILS']);
//     //                       },
//     //                     );
//     //                   });
//     //             } else if (snapshot.hasError) {
//     //               return Text(
//     //                 'ERROR',
//     //                 style: TextStyle(fontSize: 30, color: Colors.red[700]),
//     //               );
//     //             } else {
//     //               return Text(
//     //                 'Cargando...',
//     //                 style: TextStyle(fontSize: 30, color: PRIMARY_COLOR),
//     //               );
//     //             }
//     //           },
//     //         )),
//     //   ],
//     // );

//     /**
//      * EJEMPLO CON LISTA ESTÁTICA DE DATOS
//      */
//     List<Plant> plants = (_valorTexto.length > 0)
//         ? PlantRepository().getFiltered(_valorTexto)
//         : PlantRepository().getAll();
//     return Column(
//       children: [
//         TextField(
//           onChanged: (value) {
//             this.setState(() {
//               this._valorTexto = value;
//             });
//           },
//           decoration: InputDecoration(
//             hintText: "Search",
//             hintStyle: TextStyle(
//               color: PRIMARY_COLOR.withOpacity(0.5),
//             ),
//           ),
//         ),
//         Container(
//           height: 304,
//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: plants.length,
//               itemBuilder: (context, index) {
//                 return RecomendedPlantCard(
//                   image: plants[index].image,
//                   title: plants[index].title,
//                   country: plants[index].country,
//                   price: plants[index].price,
//                   press: () {
//                     Navigator.pushNamed(context, ROUTE_NAMES['DETAILS']);
//                   },
//                 );
//               }),
//         ),
//       ],
//     );
//   }
// }
