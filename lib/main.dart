import 'package:flutter/material.dart';

import 'counter_view.dart';
import 'profile_view.dart';

void main() {
  runApp(const MyApp());
}

// "ctrl + ." is the short key of the "Quick fix".
// "ctrl + d" is the short key of the select all dupicate of the that selected "words".

class MyApp extends StatelessWidget {

  // It is the key.
  // It necessary when we defined the specific key.
  // Like we navigate to the other screen.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // The "MaterialApp" Widget Is use for application one time.
    // It use at the top of the parent of the Widgets.
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // The Material give the properties.
      // Like "home".
      home: CounterView(),
    );
  }
}
