import 'package:flutter/widgets.dart';

import 'package:actividad_04/screens/home/home_screen.dart';
import 'package:actividad_04/screens/details/details_screen.dart';

const Map<String, String> ROUTE_NAMES = {
  'HOME': 'Home',
  'DETAILS': 'Details',
};

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  ROUTE_NAMES['HOME']: (BuildContext context) => HomeScreen(),
  ROUTE_NAMES['DETAILS']: (BuildContext context) => DetailsScreen(),
};
