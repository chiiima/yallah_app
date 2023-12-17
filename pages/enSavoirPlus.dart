import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/Drawer.dart';

// page en savoir plus (mMainScreen)

class enSavoirPlus extends StatelessWidget {
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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  const Text(
                    "Besoin d'aide pour arrêter de Fumer ?",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    "La méthode AddicFree STOP-TABAC© est un sevrage, un coaching, une garantie, un soutien, un suivi vers une nouvelle vie sans tabac et ce depuis maintenant 15 ans !",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: ContactInfoItem(
                            imageSrc:
                            "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64919c3459e1f411b05385c5_Femme_YES_Points.jpg",
                            description:
                            "MÉTHODE UNIQUE, SCIENTIFIQUEMENT FONDÉE\n\n\"Redoutez-vous les symptômes de sevrage après avoir arrêté de fumer ?\"\n\nLa méthode AddicFree® gère le manque, la prise de poids, ainsi que les émotions déclenchées par le sevrage.",
                          ),
                        ),
                        Flexible(
                        child: ContactInfoItem(
                          imageSrc:
                          "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64919dad4bc89d9efbd2fe5e_Foret_Naturel_Points.jpg",
                          description:
                          "100% NATURELLE ET SANS EFFETS SECONDAIRES\n\n\"Avez-vous essayé d'arrêter plusieurs fois sans succès durable ?\"\n\nLa méthode AddicFree® est un parcours de sevrage qui permet de limiter, voire d'éliminer les tentations, rechutes et récidives.",
                        ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(child:
                        ContactInfoItem(
                          imageSrc:
                          "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64919fa8be71c59abe1d274f_Specialist_Garanti_Points.jpg",
                          description:
                          "SOUTIEN ET GARANTIE SUR UNE ANNÉE ENTIÈRE\n\n\"Vous sentez-vous seul dans votre combat pour arrêter de fumer ?\"\n\nLa méthode AddicFree® est un accompagnement 100% personnalisé à travers un suivi avec un spécialiste dédié.",
                        ),),
                        Flexible(
                          child: ContactInfoItem(
                            imageSrc:
                            "https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/6491a0822f088d3de8e74ae8_Multiple_Visage_Points.jpg",
                            description:
                            "PLUS DE 15 ANS D'EXPÉRIENCE\n\n\"Vous inquiétez-vous des effets néfastes du tabac sur votre santé ?\"\n\nLa méthode AddicFree® permet de regagner le contrôle de sa vie, d'améliorer sa santé et de se sentir mieux.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfoItem extends StatelessWidget {
  final String imageSrc;
  final String description;

  ContactInfoItem({
    required this.imageSrc,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageSrc),
        SizedBox(height: 8.0),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

