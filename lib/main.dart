import 'package:design/screen/get_started.dart';
import 'package:design/services/drug_interaction_service.dart';
import 'package:design/services/forgot_password_service.dart';
import 'package:design/services/lab_report_service.dart';
import 'package:design/services/login_service.dart';
import 'package:design/services/medicine_list_service.dart';
import 'package:design/services/patient_details_service.dart';
import 'package:design/services/pcp_notes_list_service.dart';
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
        ChangeNotifierProvider(create: (_) => LabReportService()),
        ChangeNotifierProvider(create: (_) => DrugInteractionService()),
        ChangeNotifierProvider(create: (_) => MedicineListService()),
        ChangeNotifierProvider(create: (_) => PcpNotestListService()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStarted(),
      ),
    );
  }
}
