import 'package:flutter/material.dart';
import 'constant.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String id = "reset_password_screen";
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    String email = "";
    TextEditingController emailController = new TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            child: SafeArea(
                child: Center(
                    child: Text(
              "Reset password",
              style: TextStyle(color: Colors.white, fontSize: 50),
            ))),
            decoration: BoxDecoration(
              color: primeDarkColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  topLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(75)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "email@student.ksu.edu.sa",
                            hintStyle: TextStyle(color: Colors.orange[400]),
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.orange[600], fontSize: 25),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.orange[600],
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.orange[600],
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.orange[900],
                                  width: 2,
                                )),
                          ),
                          // controller: emailController,
                          onChanged: (value) {
                            email = value.toString().toLowerCase().trim();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                  child: TextButton(
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                onPressed: () {
                  if (email.isNotEmpty) {
                    // Sign in
                  } else {
                    // Please fill all data
                  }
                },
              )),
              decoration: BoxDecoration(
                color: primeDarkColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0)),
              )),
        ],
      ),
    );
  }
}
