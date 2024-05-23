import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:salary_slip/constant/urls.dart';
import 'package:salary_slip/models/api_data.dart';
import '../screens/api_response_screen.dart';
import 'package:http/http.dart' as http;

class GetSal with ChangeNotifier {
  final APIResponseScreenState _apiResponseScreen = APIResponseScreenState();

  bool isLoading = false;
  List<Employee> _employee = [];
  List<Employee> get employeesFuture => _employee;

  Future<List<Employee>> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    try {
      var url = Uri.parse(baseUrl);
      final response =
          await http.get(url, headers: {"Content-Type": "application/json"});
      final List body = json.decode(response.body)['data'];

      _employee = body.map<Employee>((e) => Employee.fromJson(e)).toList();
      isLoading = false;
      notifyListeners();
      return _employee;
    } catch (e) {
      // Handle error
      print(e);
      isLoading = false;
      notifyListeners();
      rethrow;
    }
  }
}
