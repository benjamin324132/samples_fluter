import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffde6168),
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CREATE AN \n ACCOUNT",
                        style: TextStyle(color: Color(0xfffffdfd), fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 35),
                      Text("Email",
                          style: TextStyle(color: Color(0xfffffdfd), fontSize: 15, fontWeight: FontWeight.bold)),
                      TextField(
                        style: TextStyle(fontSize: 10, height: 1, color: Colors.black),
                        decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 10)),
                      ),
                      SizedBox(height: 10),
                      Text("Phone Number",
                          style: TextStyle(color: Color(0xfffffdfd), fontSize: 15, fontWeight: FontWeight.bold)),
                      TextField(
                        style: TextStyle(fontSize: 10, height: 1, color: Colors.black),
                        decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            hintText: 'XXXX XXXX XXXX',
                            hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 10)),
                      ),
                      SizedBox(height: 10),
                      Text("Password",
                          style: TextStyle(color: Color(0xfffffdfd), fontSize: 15, fontWeight: FontWeight.bold)),
                      TextField(
                        style: TextStyle(fontSize: 10, height: 1, color: Colors.black),
                        decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 10)),
                      ),
                      SizedBox(height: 10),
                      Text("Confirm Password",
                          style: TextStyle(color: Color(0xfffffdfd), fontSize: 15, fontWeight: FontWeight.bold)),
                      TextField(
                        style: TextStyle(fontSize: 10, height: 1, color: Colors.black),
                        decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfffffdfd), width: 1.0),
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 10)),
                      ),
                      SizedBox(height: 35),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color(0xff443B54),
                          onPressed: () {},
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Have an account? ',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'Back to Log in',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                  Spacer()
                ],
              ),
            ),
          ),
        ));
  }
}
