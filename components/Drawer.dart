import 'package:flutter/material.dart';
import '../pages/conseils.dart';
import '../pages/contact.dart';
import '../pages/formationComplète.dart';
import '../pages/methoe.dart';
import '../pages/petitProduit.dart';
import '../pages/solutions.dart';
import '../pages/séance.dart';

// Side bar
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 30,
            child: const DrawerHeader(child: Text("")
            ),
          ),
          ListTile(
            title: const Text(' La méthode',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> methode()));
            },
          ),

          ListTile(
            title: const Text(' Conseils',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> conseil()));
            },
          ),


          ListTile(
            title: const Text(' Solutions',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
              ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> solutions()));
            },
          ),

          ListTile(
            title: const Text(' Petit Produit',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> petitProduit()));
            },
          ),


          ListTile(
            title: const Text(' Formation complète',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
              ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> formation()));
            },
          ),

          ListTile(
            title: const Text(' Séance avec le practicien plus proche',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> seance()));
            },
          ),

          ListTile(
            title: const Text('Contact',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
              ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> contact()));
            },
            // Add more list items as needed
          )
        ],
      ),
    );
  }
}