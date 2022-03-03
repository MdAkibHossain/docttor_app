import 'dart:convert';

import 'package:design/models/patient_details_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api.dart';

class PatientDetailsService with ChangeNotifier {
  var patientDetails;

  bool isloading = false;

  setLoadingTrue() {
    isloading = true;
    notifyListeners();
  }

  setLoadingFalse() {
    isloading = false;
    notifyListeners();
  }

  fetchPatientDetails(
    String id,
  ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    print(token);

    var header = {
      //if header type is application/json then the data should be in jsonEncode method
      "Accept": "application/json",
      // "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };

    Future.delayed(const Duration(milliseconds: 200), () {
      setLoadingTrue();
    });

    // var response = await http
    //     .get(Uri.parse('${Api().baseUrl}/visit-summary/718'), headers: header);

    var response =
        await http.get(Uri.parse('${Api().baseUrl}/visit-summary/718'),
            // body: data,
            headers: header);

    if (response.statusCode == 200) {
      patientDetails = PatientDetailsModel.fromJson(jsonDecode(response.body));

      setLoadingFalse();
      notifyListeners();
    } else {
      //something went wrong

      patientDetails = "error";

      setLoadingFalse();
    }
  }
}
