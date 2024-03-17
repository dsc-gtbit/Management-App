import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black,
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Title ${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Description ${index + 1}',
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.download),
                            color: Colors.white,
                            onPressed: () {
                              // download functionality
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
