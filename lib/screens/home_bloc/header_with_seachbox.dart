import 'package:actividad_04/screens/home_bloc/home_screen.dart';
import 'package:actividad_04/screens/home_inherited/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:actividad_04/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: DEFAULT_PADDING * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: DEFAULT_PADDING,
              right: DEFAULT_PADDING,
              bottom: 36 + DEFAULT_PADDING,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: PRIMARY_COLOR,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Hi TNT 2021 UNTDF - Inherited',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
              padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: PRIMARY_COLOR.withOpacity(0.23),
                  ),
                ],
              ),
              child: BlocBuilder<PlantsCubit, String>(
                builder: (context, searchText) => Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (valueFromTextField) {
                          context
                              .read<PlantsCubit>()
                              .changeSearchText(valueFromTextField);
                        },
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: PRIMARY_COLOR.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            color: PRIMARY_COLOR.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Text(searchText)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
