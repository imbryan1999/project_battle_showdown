// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_mark1/screens/create_ac_screen.dart';
import 'package:project_mark1/screens/login_screen.dart';

class CredentialScreen extends StatelessWidget {
  const CredentialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // login button
    final _loginButton = Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.2,
        child: RaisedButton.icon(
            padding: const EdgeInsets.all(22.0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
            color: Colors.white,
            icon: const Icon(Icons.person_rounded),
            label: const Text(
              'Login to your account',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            )),
      ),
    );

    // create account
    final _createButton = Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.2,
        child: RaisedButton.icon(
            padding: const EdgeInsets.all(22.0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CreateAccount()));
            },
            color: const Color(0xff242427),
            icon: const Icon(
              Icons.person_add_alt_rounded,
              color: Colors.white,
            ),
            label: const Text(
              'Create a new account',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            )),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height / 5,
        backgroundColor: const Color(0xff242427),
        title: const Text(
          'Welcome to \nBattle Showdown',
          style: TextStyle(
              fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/login_logo.png'),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Battle Showdown',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 55.0,
              ),
              _loginButton,
              const SizedBox(
                height: 20.0,
              ),
              _createButton,
              // _loginButton
            ],
          ),
        ),
      ),
    );
  }
}
