import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
          child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Groupie",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Login now to see what they are talking'),
                  Image.asset('assets/images/login.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email), hintText: 'Email'),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.lock), hintText: 'Password'),
                  ),
                  const SizedBox(height: 20),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text('SignIn'),
                  ),
                  const Text(
                    "Don't have an account? ",
                  ),
                  TextButton(onPressed: null, child: Text('Register Here!'))
                ],
              )),
        ),
      ),
    );
  }
}
