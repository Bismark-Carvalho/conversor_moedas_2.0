


import 'package:conversor_moedas_yt/src/models/views/HomeScreen.dart';
import 'package:flutter/material.dart';

main(){
  runApp(AppWidget());
}



class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen()
      },
    );
  }
}
