import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/Drawer.dart';

// solutions page

class solutions  extends StatelessWidget {
  const solutions ({Key? key}) : super(key: key);
  signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

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
      body: const Center(
        child: Text("solutions",
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Poppins'
        ),),
      ) ,
    );
  }
}