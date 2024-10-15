import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:med_life/features/auth/pages/sign_in_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Log In",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 300,
              width: 500,
              child: const Image(
                image: AssetImage("images/med_life.jpg"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 35,
                left: 35,
                //top: 50,
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('number'),
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                //controller: _nameController,
                // validator: (value) {
                //   if (_nameController.text.isEmpty) {
                //     return 'name must not be empty';
                //   }
                // },
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(right: 35, left: 35, top: 10, bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: new Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // controller: _passController,
                // validator: (value) {
                //   if (_passController.text.isEmpty) {
                //     return 'password must not be empty';
                //   }
                // },
              ),
            ),
            Container(
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: TextButton(
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("forget password"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ),
                  );
                },
                child: const Text(
                  "don't have an account ? sign in",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
