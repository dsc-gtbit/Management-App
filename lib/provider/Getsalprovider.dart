import 'package:flutter/material.dart';
import 'package:salary_slip/models/api_data.dart';
import '../screens/api_response_screen.dart';

class GetSal with ChangeNotifier {
  final APIResponseScreenState _apiResponseScreen = APIResponseScreenState(); // Initialize an instance of APIResponseScreen

  bool isLoading = false;
  List<Employee> _employee = [];
  List<Employee> get employeesFuture => _employee;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await _apiResponseScreen.getEmployees(); // Call the getEmployees() method correctly
      _employee = response;
    } catch (e) {
      // Handle error
      print(e);
    }

    isLoading = false;
    notifyListeners();
  }
}

