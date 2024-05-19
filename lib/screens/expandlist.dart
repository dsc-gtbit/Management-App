import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  static const secondScreenRoute = "/explist";
  const SecondScreen({super.key});

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
                color: Colors.white,
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Title ${index + 1}',
                      style: GoogleFonts.lato( 
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18.0, 
                          ),
                        ),
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Description ${index + 1}',
                              style: GoogleFonts.lato( 
                          textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14.0, 
                          ),
                        ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.download),
                            color: Colors.black,
                            onPressed: () {
                              // download functionality
                              Navigator.pushNamed(context, '/payslip');
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
