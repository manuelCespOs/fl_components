import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy']; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map((game) =>
            ListTile(
              title: Text(game),
              trailing: const Icon( Icons.arrow_right ),
            ) 
          ).toList(),
          /* ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Hola Mundo'),
          ), */
        ],
      )
    );
  }
}