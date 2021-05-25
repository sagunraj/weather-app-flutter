import 'package:flutter/material.dart';
import 'const.dart';
import 'search_bar.dart';

class UpperContainer extends StatelessWidget {
  const UpperContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.15,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.15 - 20,
            decoration: BoxDecoration(
                color: primarycolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
          ),
          SearchBar()
        ],
      ),
    );
  }
}

