import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  static const listScreenRoute = "/listscreen";
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: 10, 
            itemBuilder: (context, index) {
              return Card(
                color: Color.fromARGB(255, 203, 198, 198),
                child: ListTile(
                  title: Text(
                    'Title ${index + 1}',
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'Description ${index + 1}',
                    style: const TextStyle(color: Colors.black),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.download),
                    color: Colors.black,
                    onPressed: () {
                      // download functionality
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
