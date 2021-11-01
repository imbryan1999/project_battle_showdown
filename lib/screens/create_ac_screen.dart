import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // user field
    final _user = TextFormField(
        autofocus: false,
        controller: _userController,
        // validator: (){},
        onSaved: (value) {
          _userController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_rounded),
            contentPadding: EdgeInsets.all(22.0),
            hintText: 'Username or Email',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)))));

    // password field
    final _password = TextFormField(
        autofocus: false,
        controller: _passwordController,
        obscureText: true,
        // validator: (){},
        onSaved: (value) {
          _passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            contentPadding: EdgeInsets.all(22.0),
            hintText: 'Enter Password',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0))));

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
            fillColor: Colors.black,
            prefixIcon: Icon(Icons.mail_outline_rounded),
            contentPadding: EdgeInsets.all(22.0),
            hintText: 'Enter Email',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 2.0))));

    // signup button
    final _signupButton = Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: ElevatedButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
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
          'Create Account',
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
                  Image.asset('assets/images/login_logo.png'),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Signup Below',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 45.0,
                  ),
                  _user,
                  const SizedBox(
                    height: 15.0,
                  ),
                  _password,
                  const SizedBox(
                    height: 25.0,
                  ),
                  _email,
                  const SizedBox(
                    height: 25.0,
                  ),
                  _signupButton,
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Go Back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
