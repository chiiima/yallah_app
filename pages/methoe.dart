import 'package:addicfree_app/pages/enSavoirPlusMethode.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/Drawer.dart';

//method page

class methode extends StatelessWidget {
  signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  String _getImageUrl(int index) {
    List<String> imageUrls = [
      'https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64807f2661d81702d71c34b8_blouse-de-laboratoire.png',
      'https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64807ebb73462c14352dfb16_transfert.png',
      'https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64807e4905a22fc1ca33d482_resilience.png',
      'https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/64807f5494b4cf953442b9a8_suivi.png',
    ];

    return imageUrls[index];
  }

  String _getTitle(int index) {
    List<String> titles = [
      'x2 Séances & Spécialiste AddicFree® dédié',
      'PrepCoaching©',
      'Réflexologie Laser ou AMS',
      'Suivi & Communauté',
    ];

    return titles[index];
  }

  String _getDescription(int index) {
    List<String> descriptions = [
      'Dans la première séance, nous mettons en place les premiers outils pratiques afin de commencer sereinement le PrepCoaching©, en préparation de la deuxième séance',
      'Supervisé par votre spécialiste, vous démarrez le PrepCoaching© (dont les outils sont confidentiels), et vous le poursuivez jusqu\'à certaines prises de conscience (pour le stress), ou jusqu\'au déclic (pour les addictions).',
      'En réflexologie laser (PhotoBioModulation) ou en AMS (AutoMassage Supervisé) nous éliminerons les récepteurs responsables du manque physique (addictions), et nous déclencherons un apaisement immédiat (stress).',
      'Nous organiserons un suivi régulier adapté selon le Pass, avec l\'objectif d\'un sevrage définitif, ou d\'un mieux-être émotionnel. Vous pourrez aussi profiter d\'un groupe d\'entraide 7jours/7.',
    ];

    return descriptions[index];
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
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.network(
                    'https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/649d469a822d7825f2142413_Carine%20Simon_Addicfree.jpg',
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Notre objectif :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text('VOTRE RÉUSSITE !', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'La méthode',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Tout inclus !',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Image.network(
                    'https://uploads-ssl.webflow.com/64706bf766f54a74b267d9f6/647e12d81fad97639406e591_Addicfree%20Spe%CC%81cialiste.jpg',
                  ),
                  const Text(
                    'Un programme multi-techniques et efficace',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics:const  NeverScrollableScrollPhysics(),
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return FeatureItem(
                        imageUrl: _getImageUrl(index),
                        title: _getTitle(index),
                        description: _getDescription(index),

                      );
                    },
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> ensavoirplusmethode()));
                      },
                      child: Text('En savoir plus'),
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

class FeatureItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const FeatureItem({super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl),
         const SizedBox(height: 20),
         Text(
         title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
         const SizedBox(height: 20),
         Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
