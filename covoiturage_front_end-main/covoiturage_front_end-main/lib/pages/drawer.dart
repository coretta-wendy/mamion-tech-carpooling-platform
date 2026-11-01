import 'package:flutter/material.dart';

import '../common/constant.dart';

void displayDialog(BuildContext context, String title, String text) =>
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(title: Text(title), content: Text(text)),
    );

class ClientDrawer extends StatelessWidget {
  ClientDrawer();

  Widget salutation() {
    var now = DateTime.now();
    if (now.hour <= 14) {
      return const Text(
        "Bonjour, " + "Guy",
      );
    } else {
      return const Text(
        "Bonsoir, " + "boss",
      );
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Drawer(
        child: ListView(padding: const EdgeInsets.only(top: 5), children: [
      DrawerHeader(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Center(child: salutation()),
        ),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
        ),
      ),
      CustumList(Icons.home, "Home", () => {}),
      CustumList(
          Icons.card_membership_rounded,
          "Recharger la carte",
          () => {
                // Navigator.of(context).push(
                //     new MaterialPageRoute(builder: (context) => Cuisine()))
              }),
      CustumList(Icons.monetization_on, "Solde", () => {}),
      CustumList(
          Icons.person,
          "Mon profil",
          () => {
                // Navigator.of(context).push(
                //     new MaterialPageRoute(builder: (context) => MonProfil()))
              }),
      // CustumList(Icons.map, "Ma Commande", () => {}),
      CustumList(Icons.phone_iphone_rounded, "Contactez-nous", () {
        // Navigator.of(context)
        //     .push(new MaterialPageRoute(builder: (context) => ContactezNous()));
      }),
      CustumList(Icons.logout, "Se déconnecter", () async {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Connexion()));
      })
    ]));
  }
}

class CustumList extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustumList(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: InkWell(
          // onTap: onTap,
          splashColor: kPrimaryColor,
          child: Container(
            height: 60,
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: kTeXTColor,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Text(
                    text,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
