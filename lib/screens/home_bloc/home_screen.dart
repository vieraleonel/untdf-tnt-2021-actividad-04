import 'package:actividad_04/data/models/plant.dart';
import 'package:actividad_04/data/repositories/plant_reposotory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:actividad_04/constants.dart';
import 'package:actividad_04/screens/home_bloc/recomended_plants_list.dart';
import 'package:actividad_04/screens/home_bloc/featurred_plants_list.dart';
import 'package:actividad_04/screens/home_bloc/header_with_seachbox.dart';
import 'package:actividad_04/widgets/app_tab_bar.dart';
import 'package:actividad_04/screens/home_bloc/title_with_more_bbtn.dart';

class PlantsCubit extends Cubit<String> {
  PlantsCubit() : super("");

  void changeSearchText(value) => emit(value);
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => HomeScreenImpl();
}

class HomeScreenImpl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: BlocProvider(
          create: (BuildContext context) => PlantsCubit(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithSearchBox(size: size),
              const TitleWithMoreBtn(title: "Recomended"),
              RecomendedPlantsList(),
              const TitleWithMoreBtn(title: "Featured Plants"),
              FeaturedPlantsList(),
              SizedBox(height: DEFAULT_PADDING),
            ],
          ),
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
