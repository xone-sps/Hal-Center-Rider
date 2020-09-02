import 'package:delivery_app/shared/colors.dart';
import 'package:flutter/material.dart';

class CurrySliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String headerTitle;
  final String description;

  CurrySliverHeader(this.backgroundColor, this.headerTitle, this.description);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: Delegate(backgroundColor, headerTitle, description),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;
  final String description;

  Delegate(this.backgroundColor, this.headerTitle, this.description);

  @override
  Widget build(BuildContext context, double shrikOffset, bool overslapContent) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8, right: 6, left: 6),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Text(
              headerTitle,
              style: TextStyle(
                color: whiteColor,
                fontSize: 32,
              ),
            ),
          Text(
            description,
            style: TextStyle(color: whiteColor, fontSize: 18),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 150;

  @override
  // TODO: implement minExtent
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
