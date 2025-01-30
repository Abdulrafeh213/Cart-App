import 'package:cart_app/screens/home_page.dart';
import 'package:cart_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'singup_form.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final form = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // String name = '';
  // String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.loginForm),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Form(
            key: form,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                      String email = emailController.text.trim();
                      String pass = passwordController.text.trim();

                      if (email.isEmpty || pass.isEmpty) {
                        Fluttertoast.showToast(
                            msg: 'Please Provide all fields');
                      } else {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return MyHomePage();
                        }));
                      }
                    },
                    child: const Text("Login")),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SingupForm();
                    }));
                  },
                  child: const Text("not register yed please Click here"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
