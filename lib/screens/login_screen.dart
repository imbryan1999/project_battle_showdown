import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_mark1/screens/ac_recovery_screen.dart';
import 'package:project_mark1/screens/test.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // formkey
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // username or email field
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

    final _loginButton = Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const HomePageScreen()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Login',
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
                  'Login Below',
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
                _loginButton,
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  'Forgot your username or password?',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const RecoveryScreen())),
                  child: const Text(
                    'Click Here',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
