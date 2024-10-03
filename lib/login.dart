import 'package:flutter/material.dart';
import 'package:kuis_mobile/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}//

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/logo.png')),
            Center(
              child: SizedBox(
                width: 350,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Title
                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Silahkan login terlebih dahulu.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    // Username
                    TextField(
                      onChanged: (values) {
                        setState(() {
                          username = values;
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                      ),
                    ),

                    // Password
                    TextField(
                      onChanged: (values) {
                        setState(() {
                          password = values;
                        });
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                      ),
                    ),

                    // Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.black),
                                foregroundColor:
                                    WidgetStatePropertyAll(Colors.white)),
                            // Login Logic
                            onPressed: () {
                              if (username == 'putri' && password == '1234') {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('Login Berhasil!'),
                                  backgroundColor: Colors.green,
                                ));
                                // Routing
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage(
                                              username: username,
                                            )));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('Login Gagal!'),
                                  backgroundColor: Colors.red,
                                ));
                              }
                            },
                            child: const Text('Login')))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
