import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';

import 'package:salary_slip/models/api_data.dart';
import 'package:salary_slip/provider/Getsalprovider.dart';

class APIResponseScreen extends StatefulWidget {
  const APIResponseScreen({super.key});

  @override
  State<APIResponseScreen> createState() => APIResponseScreenState();
}

class APIResponseScreenState extends State<APIResponseScreen> {
  late Future<List<Employee>> employeesFuture;

  @override
  void initState() {
    employeesFuture = context.read<GetSal>().getAllTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: employeesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              final data = snapshot.data;
              print("Data: ");
              print(data);
              return ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    final Employee employee = data[index];
                    return ListTile(
                      title: Text(employee.name ?? ''),
                    );
                  });
            } else {
              return (const Text("Data Not Found"));
            }
          }),
    );
  }
}
