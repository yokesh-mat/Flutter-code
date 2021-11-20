import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GestureDetector(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [
               Colors.blue,
               Colors.white,
             ],
           ),
          ),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const Hero(
              tag: 'hero',
              child:CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 100.0,
                
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh_h68qAKojbkSjCLZ4ChJuSNbJv2RXrTx2g&usqp=CAU'),
              ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  
                  'Thank You for using our design created by Yokesh Matheswaran',
                  textAlign: TextAlign.center,
                  
                  style: GoogleFonts.montaga(
                    textStyle: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.black87,
                    
                    fontWeight: FontWeight.w800,
                    
                  ),
                  )
                ),
              ),
            
          ],),
        ),
        onTap: () {
          Navigator.of(context).pushNamed('/');
        },
      )
    
      
    );
  }
}