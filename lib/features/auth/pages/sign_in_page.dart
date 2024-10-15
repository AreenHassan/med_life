import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 250,
              width: 600,
              child: const Image(
                image: AssetImage("images/med_life.jpg"),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(right: 35, left: 35, top: 10, bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('name'),
                  prefixIcon: Icon(Icons.text_format),
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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('national number'),
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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('governorate'),
                  prefixIcon: Icon(Icons.text_format),
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
              padding:
                  EdgeInsets.only(right: 35, left: 35, top: 10, bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscureText2,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  label: Text('Confirm Password'),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText2 = !_obscureText2;
                      });
                    },
                    child: new Icon(_obscureText2
                        ? Icons.visibility
                        : Icons.visibility_off),
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
              margin: EdgeInsets.only(bottom: 20),
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: TextButton(
                child: const Text(
                  "Sign in",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
