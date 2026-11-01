import 'package:flutter/material.dart';

import '../../common/constant.dart';

// ignore: must_be_immutable
class ItemCountry extends StatelessWidget {
  ItemCountry(
      {Key? key,
      required this.linkImage,
      required this.paysVille,
      required this.title,
      required this.linkImageCountry})
      : super(key: key);
  String linkImage, title, paysVille, linkImageCountry;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.transparent,
          child: Image.asset(
            linkImage,
            width: 20,
            height: 20,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: kDefaultPadding)),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 9,
                  fontWeight: FontWeight.normal),
            ),
            Row(
              children: [
                Text(
                  paysVille,
                  style: const TextStyle(
                      color: kTeXTColor,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(padding: EdgeInsets.only(left: kDefaultPadding)),
                Image.asset(
                  linkImageCountry,
                  package: 'country_icons',
                  width: 20,
                  height: 20,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
