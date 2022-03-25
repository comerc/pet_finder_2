// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:extended_image/extended_image.dart';
import 'package:pet_finder/imports.dart';

// TODO: как сделать splash для элемента списка LedgerScreen и пункта меню UnitScreen?

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.url,
    this.radius = 32,
    this.onTap,
  }) : super(key: key);

  final String url;
  final double radius;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Material(
        type: MaterialType.circle,
        clipBehavior: Clip.antiAlias,
        color: Colors.transparent,
        child: Ink.image(
          fit: BoxFit.cover,
          image: getImageProvider(url),
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.white.withOpacity(0.24),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
