import 'dart:developer';
import 'authServices.dart';
import 'package:addicfree_app/pages/MainScreen.dart';
import 'package:flutter/material.dart';
import '../components/squareTile.dart';
import '../components/text_field.dart';
import 'RegisterPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'MainScreen.dart';


// login page
class LoginPage extends StatefulWidget {
  LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  signUserIn(){
FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text).then((userCredential) {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> MainScreen()),
      );
    }).catchError((error){
      log("Error:${error.toString() }");

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(

            child: Column(
              children: [
                //bienvenue
                const Text("CONNEXION",
                  style: TextStyle(color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Poppins'
                  ),
                ),
                const SizedBox(height: 10),

                const Text("Accédez à votre espace AddicFree",
                  style: TextStyle(color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                const SizedBox(height: 10),
                // email texfield

                textfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureTex: false,
                ),
                const SizedBox(height: 10,),

                // password textfield
                textfield(
                  controller: passwordController,
                  hintText: 'mot de passe',
                  obscureTex: true,
                ),

                //forgot password
                const SizedBox(height: 10),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                textfield(
                  controller: confirmController,
                  hintText: 'captcha test ',
                  obscureTex: true,
                ),
                const SizedBox(height: 20),

                // se connecter button

                GestureDetector(
                  onTap: (){
                FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailController.text,
                password: passwordController.text).then((userCredential) {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> MainScreen()),
                );
                }).catchError((error){
                log("Error:${error.toString() }");

                });
                },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(color: Colors.green,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Center(
                      child: Text("Se connecter ",
                        style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

             const SizedBox(height: 40),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Ou continuer avec',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),


                // google and facebook sign in buttons
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    // google button
                    GestureDetector(
                      child: SquareTile(
                          onTap:() => AuthService().signInWithGoogle(),
                          imagePath: 'assets/images/google.png'),
                    ),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(
                        onTap:(){

                        },
                        imagePath: 'assets/images/facebook.png')
                  ],
                ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Vous n'avez pas de compte? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: (){

                      }
                      ,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: const Text(
                          'Créer un!',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}














