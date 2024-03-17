import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
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
                color: Colors.black,
                child: ListTile(
                  title: Text(
                    'Title ${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Description ${index + 1}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.download),
                    color: Colors.white,
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
