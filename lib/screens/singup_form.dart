import 'package:cart_app/screens/login_form.dart';
import 'package:cart_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SingupForm extends StatelessWidget {
  SingupForm({super.key});

  final form = GlobalKey<FormState>();
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // String name = '';
  // String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.singupForm),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Form(
              key: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: fnameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please Enter your First Name',
                      labelText: 'First Name',
                      icon: Icon(Icons.person),
                    ),
                    validator: (fname) {
                      if (fname == null || fname.isEmpty) {
                        return 'Please Enter your Email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: lnameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please Enter your Last Name',
                      labelText: 'Last Name',
                      icon: Icon(Icons.person),
                    ),
                    validator: (lname) {
                      if (lname == null || lname.isEmpty) {
                        return 'Please Enter your Email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'abc@xyz.com',
                      labelText: 'Email',
                      icon: Icon(Icons.email),
                    ),
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Please Enter your Email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '*******',
                      labelText: 'Password',
                      icon: Icon(Icons.password),
                    ),
                    validator: (pass) {
                      if (pass == null || pass.isEmpty) {
                        return 'Please Enter your Email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        String fname = fnameController.text.trim();
                        String lname = lnameController.text.trim();
                        String email = emailController.text.trim();
                        String pass = passwordController.text.trim();

                        if (fname.isEmpty ||
                            lname.isEmpty ||
                            email.isEmpty ||
                            pass.isEmpty) {
                          Fluttertoast.showToast(
                              msg: 'Please Provide all fields',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 10,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        } else {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return LoginForm();
                          }));
                        }
                      },
                      child: const Text("Singup")),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LoginForm();
                      }));
                    },
                    child: const Text("already registered please Click here"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
