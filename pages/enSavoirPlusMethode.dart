import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/Drawer.dart';

// page en savoir plus (La methode)


class ensavoirplusmethode extends StatelessWidget {

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
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: MyDrawer (),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(16.0),
              child: Text(
                "Comment ça fonctionne ?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "La réflexologie laser (PhotoBioModulation) ou l'AMS (AutoMassage Supervisé) permettent d'éliminer les récepteurs de nicotine responsables du manque physique.\n\nCette méthode ancestrale cible et élimine les récepteurs de nicotine, éliminant ainsi le manque physique qui entrave tant de tentatives d'arrêt.\n\nEn choisissant notre expertise, vous optez pour une solution scientifiquement fondée, douce et extrêmement efficace, qui vous propulse vers une vie libérée de l'emprise du tabac. Ne laissez pas passer cette opportunité de retrouver santé et bien-être !",
                style: TextStyle(fontSize: 16),
              ),
            ),
            // You can add more sections and content here using Flutter widgets
          ],
        ),
      ),
    );
  }
}

