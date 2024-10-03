import 'package:flutter/material.dart';
import 'package:latihan_uts/home.dart';  
import 'login_page.dart';

void main() {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {  
  const MyApp({super.key});  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shop',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(
        primarySwatch: Colors.blue,  
      ),
      
      initialRoute: '/', 
      routes: {
        '/': (context) => const LoginPage(), 
        '/home': (context) => const HomePage(username: ''), 
      },
    );
  }
}
