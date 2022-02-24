import 'package:design/screen/get_started.dart';
import 'package:design/services/forgot_password_service.dart';
import 'package:design/services/login_service.dart';
import 'package:design/services/patient_details_service.dart';
import 'package:design/services/signup_service.dart';
import 'package:design/services/update_forgotten_password_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginService()),
        ChangeNotifierProvider(create: (_) => SignupService()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordService()),
        ChangeNotifierProvider(create: (_) => UpdateForgottenPasswordService()),
        ChangeNotifierProvider(create: (_) => PatientDetailsService()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStarted(),
      ),
    );
  }
}
