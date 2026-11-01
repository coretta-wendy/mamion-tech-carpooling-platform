import 'package:flutter/material.dart';

import '../../common/constant.dart';
import 'item_country.dart';

class ItemTravel extends StatelessWidget {
  const ItemTravel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: size.height * 0.21,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Billet Verifie",
                style: TextStyle(
                    color: ksecondaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Row(
            children: [
              Container(
                // color: Colors.amber,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/airplanbackground.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                height: size.height * 0.15,
                width: size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profil.jpg"),
                          radius: 20,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: kDefaultPadding)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Landry Njiwo",
                                  style: TextStyle(
                                      color: kTeXTColor,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(left: 10)),
                                Image.asset(
                                  "assets/images/verify.png",
                                  width: 10,
                                  height: 10,
                                  // fit: BoxFit.fitWidth,
                                  // color: kPrimaryColor,
                                ),
                              ],
                            ),
                            const Text(
                              "Landry Njiwo",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        )
                      ],
                    ),
                    // const Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: size.height * 0.15,
                child: Column(
                  children: [
                    const Text(
                      "09",
                      style: TextStyle(
                          color: kTeXTColor,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    // const Spacer(
                    //   flex: 1,
                    // ),
                    const Text(
                      "janv.",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    // const Spacer(
                    //   flex: 1,
                    // ),
                    const Text(
                      "2023",
                      style: TextStyle(
                          color: kTeXTColor,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: [
                        const Text(
                          "56 000 XAF / ",
                          style: TextStyle(
                              color: kTeXTColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          "assets/images/bagage.png",
                          width: 10,
                          height: 10,
                          // fit: BoxFit.fitWidth,
                          // color: kPrimaryColor,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      "02 bagage(s) restant(s)",
                      style: TextStyle(
                          color: kTeXTColor,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
