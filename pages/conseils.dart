import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/Drawer.dart';


// page des conseils


class conseil extends StatelessWidget {
  const conseil({Key? key}) : super(key: key);
  signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body:const  Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Conseils pour arrêter de fumer",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "1. Identifiez vos motivations pour arrêter de fumer.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              Text(
                "2. Élaborez un plan pour gérer les situations de tentation.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              Text(
                "3. Faites de l'exercice régulièrement pour réduire les envies.",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
          Text(
            "4. Évitez les déclencheurs qui vous poussent à fumer.",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
            ),
          ),
          Text(
            "5. Utilisez des substituts nicotiniques si nécessaire.",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
            ),
          ),
          Text(
            "6. Trouvez des activités de détente pour gérer le stress.",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
            ),
          ),
              // Add more advice points as needed
            ],
          ),
        ),
      ),
    );
  }
}
