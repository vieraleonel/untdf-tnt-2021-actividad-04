import 'package:flutter/material.dart';

import 'package:actividad_04/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          RoundedRectangleButton(),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: DEFAULT_PADDING / 4),
              height: 7,
              color: PRIMARY_COLOR.withOpacity(0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: DEFAULT_PADDING / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class RoundedRectangleButton extends StatelessWidget {
  const RoundedRectangleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: PRIMARY_COLOR,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "More",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
