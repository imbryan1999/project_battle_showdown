import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({Key? key}) : super(key: key);

  @override
  _RecoveryScreenState createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  final _formKey = GlobalKey<FormState>();
  // edtiting controller
  final _fullnameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // full name field
    final _fullName = TextFormField(
        autofocus: false,
        controller: _fullnameController,
        // validator: (){},
        onSaved: (value) {
          _fullnameController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_rounded),
            contentPadding: EdgeInsets.all(22.0),
            hintText: 'Full Name',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)))));

    // email field
    final _email = TextFormField(
        autofocus: false,
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        // validator: (){},
        onSaved: (value) {
          _emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_rounded),
            contentPadding: EdgeInsets.all(22.0),
            hintText: 'Email',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)))));

    // send email button
    final _sendEmailButton = Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: ElevatedButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Send Email',
                style: TextStyle(fontSize: 16.0, color: Colors.white)),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              side: const BorderSide(width: 1.0, color: Colors.grey),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              padding: const EdgeInsets.all(12.0)),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 5,
        elevation: 0,
        backgroundColor: const Color(0xff242427),
        title: const Text(
          'Account Recovery',
          style: TextStyle(fontSize: 22.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Begin the recovery process',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Please enter the name and email associated \n with your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  _fullName,
                  const SizedBox(
                    height: 15.0,
                  ),
                  _email,
                  const SizedBox(
                    height: 35.0,
                  ),
                  _sendEmailButton,
                  const SizedBox(
                    height: 15.0,
                  ),
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Text(
                        'Go Back',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      )),
                ],
              )),
        ),
      ),
    );
  }
}
