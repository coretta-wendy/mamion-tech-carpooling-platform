import 'package:flutter/material.dart';

import '../../common/constant.dart';
import '../componant_page/item_travel.dart';

class BodyAcceuil extends StatelessWidget {
  const BodyAcceuil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            ListView.separated(
                separatorBuilder: (_, m) => const Divider(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext ctx, index) {
                  return Text("bonjour Dolvarele");
                }),
          ])),
    );
  }
}
