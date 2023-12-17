import 'package:addicfree_app/pages/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

// first page after opening the app

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  //homepage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Image.asset('assets/images/yalahpng.png',
            width:  200,
          ),
        ),

        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Image.asset('assets/images/yalahpng.png',
              width: 140,
              ),
              const Padding(padding: EdgeInsets.all(20)),
              const Text ("YALLAAAAAAHHHH",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins'
                ),
              ),
              //Padding(padding: EdgeInsets.all(10)),
              const  SizedBox(height: 10 ,),

              
              const Text("Dir niya w ched triq!",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Poppins'
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80,),
              const Text(
                  " walakin ghatkhless ",
              style: TextStyle(
                fontSize: 20,
              fontFamily: 'Poppins'),
                textAlign: TextAlign.center,
              ),

              // espace entre le boutton et le texte
              Padding(padding: EdgeInsets.all(30)),

              //signup button
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                ),
                onPressed: () {
                  // Navigation to the second page
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => RegisterPage(),
                    ),
                  );
                },
                child: Text(
                  "Se connecter",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )


            ],
          ),
        )
    );
  }
}
