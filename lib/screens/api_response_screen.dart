import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:salary_slip/models/api_data.dart';

class APIResponseScreen extends StatefulWidget {
  const APIResponseScreen({super.key});

  @override
  State<APIResponseScreen> createState() => _APIResponseScreenState();
}

class _APIResponseScreenState extends State<APIResponseScreen> {
  final baseUrl =
      "https://script.google.com/macros/s/AKfycbw0Bq-gGvtsLurpEZva3iJ414KFnmBZJhwtjMXFRqAy75xijGv9-h3tfh5NDaT0bEvQ/exec";
  late Future<List<Employee>> employeesFuture;

  Future<List<Employee>> getEmployees() async {
    try {
      var url = Uri.parse(baseUrl);
      final response =
          await http.get(url, headers: {"Content-Type": "application/json"});
      final List body = json.decode(response.body)['data'];
      return body.map<Employee>((e) => Employee.fromJson(e)).toList();
    } catch (e) {
      print(e);
      throw Exception('Error');
    }
  }

  @override
  void initState() {
    employeesFuture = getEmployees();
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
