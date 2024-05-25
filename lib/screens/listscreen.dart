import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:salary_slip/provider/Getsalprovider.dart';
import 'package:salary_slip/screens/payslip_screen.dart';

class ListScreen extends StatefulWidget {
  static const listScreenRoute = "/listscreen";
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GetSal>().getAllTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<GetSal>(
          builder: (context, getSalProvider, child) {
            if (getSalProvider.isLoading) {
              return const CircularProgressIndicator();
            }

            if (getSalProvider.employeesFuture.isEmpty) {
              return const Text('No data available');
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: getSalProvider.employeesFuture.length,
                itemBuilder: (context, index) {
                  final employee = getSalProvider.employeesFuture[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PayDetails.payDetailRoute,
                          arguments: employee);
                    },
                    child: SizedBox(
                      height: 100,
                      child: Card(
                        color: Colors.white,
                        child: ListTile(
                          title: Text(
                            employee.name ?? 'No name',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            employee.designation ?? 'No designation',
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
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
