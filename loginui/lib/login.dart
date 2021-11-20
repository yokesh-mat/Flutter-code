import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';


class LoginPage extends StatefulWidget {
   const LoginPage({ Key? key }) : super(key: key);





  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
     


    final logo = const Hero(tag: 'hero', child: CircleAvatar(
    backgroundColor: Colors.transparent,
    radius: 48.0,
     backgroundImage: NetworkImage('https://bcassetcdn.com/public/blog/wp-content/uploads/2019/07/18094848/kingfisher-2.png'),

  ));

    final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
    );

  

    
    final password = TextFormField(
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
    hintText: 'Password',
    contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
    );

    final forgot = TextButton(onPressed: () {  },
    child:const Text('Forgot password?') ,);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        logo,
        Container(
          padding: const EdgeInsets.all(16.0),
          child: email,
        ),
        const SizedBox(height: 15.0),

       Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: password,
        ),
        const SizedBox(height: 15.0),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Material(
            
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: const Color(0xff01A0C7),
    child: MaterialButton(
    padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    onPressed: () {
    Navigator.push( context, MaterialPageRoute(builder: (context) => const WelcomeCard()));
    
    },
    child: const Text("Login",
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
    ),
        ),
        const SizedBox(height: 15.0),
        forgot,
      ],)
      
    );
  }
}