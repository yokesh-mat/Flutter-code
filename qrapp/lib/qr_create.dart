import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class Generator extends StatefulWidget {
  const Generator({ Key? key }) : super(key: key);

  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  String qrString = "Add Data";
  String imgString = 'https://www.oberlo.com/media/1628511633-instagram.jpeg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         BarcodeWidget(
           barcode: Barcode.qrCode(
            
           ),
           data: qrString,
           width: 200,
           height: 200,
         ),
         Center(
           child: Container(
             width: MediaQuery.of(context).size.width*0.8,
             child: TextField(
                onChanged: (value){
                  setState(() {
                    qrString = value;
                  });
                },
                decoration:  InputDecoration(
                  hintText: "Enter Data",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),

                ),
              
             ),
           ),
         ),
         
        ],
      ),
      
      
    );
  }
}