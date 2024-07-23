import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salary_slip/screens/loginscreen.dart';

class PRofileScreen extends StatelessWidget {
  final String userName = "John Doe";
  final String email = "johndoe@example.com";
  final String phoneNumber = "+1 (123) 456-7890";

  const PRofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 05.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 50, // Adjust the radius as needed
              ),
              const SizedBox(height: 16), // Spacer

              // Text(
              //   userName,
              //   style:
              //       const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              // ),
              // const SizedBox(height: 16), // Spacer

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow(Icons.person, "Name", userName),
                      const SizedBox(height: 12),
                      _buildDetailRow(Icons.email, "Email", email),
                      const SizedBox(height: 12),
                      _buildDetailRow(Icons.phone, "Phone", phoneNumber),
                      const SizedBox(height: 12),
                      // _buildDetailRow(Icons.comment, "Feedback", feedback),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h), // Spacer

              // Logout button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Colors.redAccent.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.h),
                    ),
                  ),
                  onPressed: () async {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      LoginScreen.loginRoute,
                      (route) => false,
                    );
                  },
                  child: Text(
                    "Log - out",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 20),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
