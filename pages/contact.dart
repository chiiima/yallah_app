import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/Drawer.dart';

// page du contact

class contact extends StatelessWidget {

  signUserOut() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Une vie libérée avec AddicFree",
          style: TextStyle(
              fontSize: 16
          ),),
        backgroundColor: Colors.green[700],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      drawer: MyDrawer (),
      body: ListView(
        children: [
          Container(// Use appropriate background color
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'NOUS CONTACTER',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Standard',
                  style: TextStyle(fontSize: 32, color: Colors.red),
                ),
                InkWell(
                  onTap: () => launch('tel:+33184604098'),
                  child:const  Text(
                    '01 84 60 40 98',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const Text(
                  '↑ Cliquez pour Appeler ↑\nAppel non surtaxé. Prix d\'un appel local.',
                  style: TextStyle(fontSize: 19,
                  fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Rendez-Vous Découverte',
                  style: TextStyle(fontSize: 32, color: Colors.red),
                ),
                const SizedBox(height: 20),
               const  Text(
                  'Programmez un Rendez-Vous découverte avec l\'un de nos conseillers, choisissez la date et l\'heure : nous vous appellerons.',
                  style: TextStyle(fontSize: 19,
                  fontFamily: 'Poppins'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                  ),
                  onPressed: () => launchUrl('https://calendly.com/centres-addicfree/30min' as Uri),
                  child: Text('RÉSERVER MON RENDEZ-VOUS'),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          // ... Other sections and elements go here
        ],
      ),
    );
  }

}
