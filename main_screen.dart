
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../components/Drawer.dart';
import 'PASS.dart';
import 'enSavoirPlus.dart';

// first page after logging in
// contiendra la partie gratuite

/*class youtube extends StatefulWidget {
  const youtube({Key? key}) : super(key: key);

  @override
  State<youtube> createState() => _youtubeState();
}
class _youtubeState extends State<youtube> {
  final videoURL =" ";
  late YoutubePlayerController _controller;

  void initstate(){
    final videoID= YoutubePlayer.convertUrlToId('https://youtu.be/TuYdPpVezyAl');
    _controller= YoutubePlayerController(
        initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(
              controller: _controller,
            showVideoProgressIndicator: true,
              onReady: ()=> debugPrint("Ready"),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
              ),
              const PlaybackSpeedButton(),
            ],
          ),
        ],
      ),
    );
  }
}*/


class MainScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  signUserOut() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
              // Replace with your image widget
              child: Image.asset(
                'assets/images/passAddic.jpg',
                width: 90,
                height: 150,
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'PASS SEVRAGE TABAC',
               style: TextStyle(
                   fontSize: 20,
                  fontWeight: FontWeight.bold,
               fontFamily: 'Poppins',
               color: Colors.red),
            ),
            SizedBox(height: 10),

             const Text(
              'Ça fait peut-être des mois ou des années que vous vous dites que vous devriez arrêter de fumer mais vous n’arrivez jamais à vous décider ?\n\n'
                  'Vous avez déjà tenté un sevrage, mais c’était trop difficile et vous avez (re)craqué ? Ou êtes-vous abonné aux multi récidives et adepte du « j’arrête, je reprends, j’arrête, je reprends » ?\n\n'
                  'Créer « Le Déclic » plutôt que de l’attendre, c\'est possible !\n\n'
                  'Voici comment nous procédons, et ce qui est inclus dans le Pass STOP-TABAC :',
              style: TextStyle(fontSize: 16,
              ),
               textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            const Text(
              '① Commencez maintenant\n'
                  '② Avancez à votre rythme\n'
                  '③ Obtenez des résultats',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),




            const SizedBox(height: 30,),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PASS(),)
                );
              },
              child: Text('RÉSERVER MON PASS'),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> enSavoirPlus()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              child: const Text('En savoir plus'),
            ),

            // More content can be added here
          ],
        ),
      ),
    );
  }
}


