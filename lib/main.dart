import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/login/login_page.dart';
import 'providers/signup_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SignUpHelper>(create: (_) => SignUpHelper()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
