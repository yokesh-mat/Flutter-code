import 'package:flutter/material.dart';

import 'qr_create.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       
        title: const Text('QR maker'),
        
      ),
      
      body:
      
       Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Generator()),
                );
              },
              
              child: Text('Generate QR code'),
            ),
             ElevatedButton(
              onPressed: () {
               
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal:12.5),
                child: Text('Scan QR code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}