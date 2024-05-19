import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              return SizedBox(
                height: 100,
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                      'Title ${index + 1}',
                      style: GoogleFonts.lato( 
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18.0, 
                          ),
                        ),
                    ),
                    subtitle: Text(
                      'Description ${index + 1}',
                      style: GoogleFonts.lato( 
                          textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14.0, 
                          ),
                        ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.download),
                      color: Colors.black,
                      onPressed: () {
                        // download functionality
                      },
                    ),
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
