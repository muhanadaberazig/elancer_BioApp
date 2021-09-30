import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Card/CardWidgett.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "BIO",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xdf15c1df),
                Color(0xdf4f66ddd),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                child: CircleAvatar(

                  radius: 80,
                  backgroundImage: AssetImage('images/do.jpeg'),
                  //child:  Image.asset('images/a.jpeg'),//backgroundColor: Colors.teal,
                  // backgroundImage: NetworkImage(
                  //    "https://i.pinimg.com/474x/f0/01/60/f00160c8608bc4c1c2c39cda375f1dc9.jpg"),
                ),
                //decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(70),
                //color: Colors.deepPurple,
                //),
              ),
              SizedBox(height: 10),
              Text(
                "Mohannad Yasser ABU Razig",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "Elancer_Flutter",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                height: 50,
                thickness: 3,
                endIndent: 25,
                indent: 25,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              BioCard(
                leading: Icons.email,
                trailing: Icons.send,
                email: 'Email',
                subemail: 'mohanad12@gmail',
                marginBottom: 10,
              ),
              SizedBox(height: 10),
              BioCard(
                leading: Icons.phone,
                trailing: Icons.send,
                email: 'phone',
                subemail: '+9720597199343',
                marginBottom: 10,
              ),
              Spacer(),
              Text('Elancer_Flutter'),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
