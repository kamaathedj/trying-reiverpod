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
        title: Text('Home'),
        leading: Icon(Icons.home_work),
        actions: [IconButton(
          onPressed: ()=>{
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('setting Tapped'),backgroundColor: FlexColor.amberDarkPrimary,))
          },
           icon: Icon(Icons.settings))],
      ),
      body:Text("nanan"),
      floatingActionButton: FloatingActionButton(
        onPressed:() => Navigator.push(
              context, MaterialPageRoute(builder: (context) => PrisonsView())),
        child: Text("->"),
      ),
    );
  }
}
