import 'package:flutter/material.dart';
import 'package:muna/pages/home.dart';
import 'package:muna/pages/loading.dart';
import 'package:muna/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
