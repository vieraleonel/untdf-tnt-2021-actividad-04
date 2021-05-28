import 'package:actividad_04/data/models/plant.dart';
import 'package:actividad_04/data/repositories/plant_reposotory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:actividad_04/constants.dart';
import 'package:actividad_04/screens/home_child_props/recomended_plants_list.dart';
import 'package:actividad_04/screens/home_child_props/featurred_plants_list.dart';
import 'package:actividad_04/screens/home_child_props/header_with_seachbox.dart';
import 'package:actividad_04/widgets/app_tab_bar.dart';
import 'package:actividad_04/screens/home_child_props/title_with_more_bbtn.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _valorTexto = "";

  _callback(value) {
    this.setState(() {
      this._valorTexto = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;

    List<Plant> plants = (_valorTexto.length > 0)
        ? PlantRepository().getFiltered(_valorTexto)
        : PlantRepository().getAll();

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size, callback: this._callback),
            const TitleWithMoreBtn(title: "Recomended"),
            RecomendedPlantsList(plants: plants),
            const TitleWithMoreBtn(title: "Featured Plants"),
            FeaturedPlantsList(),
            SizedBox(height: DEFAULT_PADDING),
          ],
        ),
      ),
      bottomNavigationBar: AppTabBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
