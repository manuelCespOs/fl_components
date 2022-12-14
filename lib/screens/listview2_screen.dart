import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  const ListView2Screen({Key? key}) : super(key: key);
  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy']; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon( Icons.arrow_right ),
          onTap: () {
            print(options[index]);
          },
          iconColor: Colors.indigoAccent,
        ),
        //itemBuilder: (context, index) => Text( options[index] ),
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}