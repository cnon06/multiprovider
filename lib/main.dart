import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modelsofprovider.dart';
import 'myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
      ),
      home:
      
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ModelOfProvider1>(create: (context) => ModelOfProvider1()),
          ChangeNotifierProvider<ModelOfProvider2>(create: (context) => ModelOfProvider2()),
          ChangeNotifierProvider<ModelOfProvider3>(create: (context) => ModelOfProvider3()),

        ],
         child: MyHomePage(),
      )
      
      
    );
  }
}

