import 'dart:developer';
import 'package:addicfree_app/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//register page

void main() => runApp(RegisterApp());

class RegisterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  User? currentUser= FirebaseAuth.instance.currentUser;


  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

// sign in with email and password method

  Future<void> signInWithEmailAndPassword() async {
    try {
      final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      if (userCredential.user != null) {
        // Successfully signed in
        print('User ID: ${userCredential.user!.uid}');
      }
    } catch (e) {
      // Sign-in failed
      print('Sign-in error: $e');
    }
  }


final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
              const SizedBox(height: 10),


              const SizedBox(height:  20),

              //creer le compte
              const  Text("S'inscrire",
                style: TextStyle(color:Colors.black,
                    fontSize: 25,
                    fontFamily: 'Poppins'
                ),
              ),
              const SizedBox( height:10),

              const Text("Créer votre espace AddicFree",
                style: TextStyle(color:Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins'
                ),
              ),
              const SizedBox( height:30),

              // name texfieled

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: 'Nom',
                  enabledBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey)
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  obscureText: false,
                ),
              ),
              const SizedBox(height: 20),

              // email textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white)
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.blueGrey)
                    ),
                    fillColor: Colors.white,
                    filled: true ,
                  ),

                  obscureText: false,

                ),
              ),
              const SizedBox(height: 20),

              // password textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Mot de passe',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.white)
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.blueGrey)
                    ),
                  fillColor: Colors.white,
                      filled: true,
                  ),
                ),
              ),
             const  SizedBox(height: 40),


            // register button

              ElevatedButton(
                  onPressed: (){
                    var nom= _nameController.text.trim();
                    var email= _emailController.text.trim();
                    var password= _passwordController.text.trim();
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email,
                        password: password).then((value) => {
                          log('user created'),
                      FirebaseFirestore.instance.collection("users").doc().set({
                        'nom': nom,
                        'Email': email,
                        'password': password,
                        'createdAt': DateTime.now(),
                        'userID': currentUser?.uid
                      }),
                      log('Data created'),
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                child: Text("S'inscrire "),
              ),



                const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  children:[
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),



                 const SizedBox(height: 50,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     const Text("vous avez déjà un compte?",
                   style: TextStyle(color: Colors.black)
                    ),
                  const SizedBox(width: 4),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage (),)
                      );
                    },
                    child: const Text("connectez-vous",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                 ],
                ),
            ]
               ),
              )
            )
           )
          );
         }
       }
