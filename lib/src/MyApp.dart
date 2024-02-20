import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:rusted_iron_sheets/src/Feature_prisons/prisonsView.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlexColor.amberDarkPrimary,
        title: Text('Home'),
        leading: Icon(Icons.home_work),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('press me'),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => PrisonsView())),
        ),
      ),
    );
  }
}
