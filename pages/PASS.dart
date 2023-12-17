import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/Drawer.dart';

// pass page

class PASS extends StatelessWidget {

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  Text(
                        "PASS SEVRAGE TABAC",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Image.network(
                        "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/647dff859aba93c4f4cbfd7c_%5BMode%20Produit%5D%20Pass_Tabac%20(1)%20(1).png",
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                : null,
                          );
                        },
                      ),
                      SizedBox(height: 16.0),
                      Image.network(
                        "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/647df4cf3ef45b0bd46d105f_Design%20sans%20titre%20(2).png",
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                : null,
                          );
                        },
                      ),
                      const SizedBox(height: 16.0),
                      Image.network(
                        "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/647e008aec9216e77bc90ca7_Consultations.png",
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) return child;
                          return CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                : null,
                          );
                        },
                      ),
                      const  SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () => print("Payment 1x 294€"),
                                child: Text("PAIEMENT EN 1x 294€"),
                              ),
                              SizedBox(height: 8.0), // Add spacing between buttons
                              ElevatedButton(
                                onPressed: () => print("Payment 2x 148€"),
                                child: Text("PAIEMENT EN 2x 148€"),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () => print("Payment 3x 99€"),
                                child: Text("PAIEMENT EN 3x 99€"),
                              ),
                              SizedBox(height: 8.0), // Add spacing between buttons
                              ElevatedButton(
                                onPressed: () => print("Réserver un appel découverte"),
                                child: Text("RÉSERVER UN APPEL DÉCOUVERTE"),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16.0),
                      const Text(
                        "① Commencez maintenant\n② Avancez à votre rythme\n③ Obtenez des résultats",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        "Ça fait peut-être des mois ou des années que vous vous dites que vous devriez arrêter de fumer mais vous n’arrivez jamais à vous décider ?\n\nVous avez déjà tenté un sevrage, mais c’était trop difficile et vous avez (re)craqué ? Vous êtes abonné aux multi récidives, en mode « j’arrête, je reprends, j’arrête » ?\n\nCréer « Le Déclic » plutôt que de l’attendre, c'est possible !",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(width: 8.0),
                                 Expanded(child:

                                 Text("Première Séance : Nous mettons en place les premiers outils pratiques et remèdes afin de commencer sereinement le PrepCoaching, et préparer la deuxième séance.",
                                 )
                                 ),


                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(width: 8.0),

                              Expanded(child: Text("PrepCoaching© : Vous démarrez le PrepCoaching (dont les outils sont confidentiels), supervisé par votre spécialiste, et le poursuivez jusqu’au déclenchement du déclic.",)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(width: 8.0),
                              Expanded(child:
                              Text("Deuxième Séance : Nous éliminerons les récepteurs de nicotine responsables du manque physique, en réflexologie laser ou en automassage supervisé."),
                              )
                            ],

                          ),
                          Row(
                            children: [
                              Icon(Icons.check),
                              SizedBox(width: 8.0),
                              Expanded(child: Text("Suivi : Nous organiserons un suivi régulier pendant un an, avec l’objectif d’un sevrage définitif. Vous pourrez aussi profiter d’un groupe d’entraide 7 jours / 7.")),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
