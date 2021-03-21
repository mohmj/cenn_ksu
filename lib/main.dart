import 'package:cenn_ksu/home_screen.dart';
import 'package:cenn_ksu/registration_screen.dart';
import 'package:cenn_ksu/reset_password_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      initialRoute: ResetPasswordScreen.id,
      routes: {
        HomeScreen.id:(context)=> HomeScreen(),
        SignUpScreen.id:(context)=> SignUpScreen(),
        SigninScreen.id:(context)=> SigninScreen(),
        ResetPasswordScreen.id:(context)=>ResetPasswordScreen(),
      },
    );
  }
}
