import 'package:flutter/material.dart';
 class button extends StatelessWidget {

   final  Function()? onTap;
   const button({ super.key,
   required this.onTap,
   });

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: onTap,
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
     );
   }
 }
 