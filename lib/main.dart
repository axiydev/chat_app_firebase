import 'package:chat_app_firebase/firebase_options.dart';
import 'package:chat_app_firebase/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

/*
Created by Axmadjon Isaqov on 15:18:20 31.08.2022
© 2022 @axi_dev 
*/
/*
Mavzu:::Firebase Realtime Database,Firebase Firestore
*/
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
