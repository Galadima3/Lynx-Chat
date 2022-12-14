// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'forgot_password_page.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginScreen({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;
  void _togglePasswordView() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    //show a loading circle
    showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });

    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Container(
                      height: 230, child: Image.asset('images/flutter.png')),
                  //Hello Again
                  Text(
                    'Hello There! ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome back, you\'ve been missed! ',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  //email textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),

                  //password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: _isObscured,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscured
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: _togglePasswordView),
                              hintText: 'Password',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ForgotPasswordPage();
                                },
                              ));
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                      ],
                    ),
                  ),
                  //signin button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(300, 69),
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: signIn,
                    child: Text('Sign In'),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: widget.showRegisterPage,
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  )

                  //not a member? register button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
