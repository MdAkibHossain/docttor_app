// import 'dart:convert';

// import 'package:design/constants/api.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

// class LabReport with ChangeNotifier {
//   List _labReports = [];
//   List get labreports {
//     return [..._labReports];
//   }

//   Future<void> fetchLabReport() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     var token = prefs.getString('token');
//     var header = {
//       //if header type is application/json then the data should be in jsonEncode method
//       "Accept": "application/json",
//       // "Content-Type": "application/json",
//       "Authorization": "Bearer $token",
//     };

//     var response = await http.get(Uri.parse('${Api().baseUrl}/test_list/718'),
//         // body: data,
//         headers: header);
//     var responsebody = jsonDecode(response.body);
//     print(responsebody);
//   }
// }

import 'dart:convert';

import 'package:design/models/pcp_notest_list_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api.dart';

class LabReportSer with ChangeNotifier {
  var pcpNotes;

  bool isloading = false;

  setLoadingTrue() {
    isloading = true;
    notifyListeners();
  }

  setLoadingFalse() {
    isloading = false;
    notifyListeners();
  }

  Future<void> fetchLabReport() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var header = {
      //if header type is application/json then the data should be in jsonEncode method
      "Accept": "application/json",
      // "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };

    var response = await http.get(Uri.parse('${Api().baseUrl}/test_list/718'),
        // body: data,
        headers: header);
    var responsebody = jsonDecode(response.body);
    print(responsebody['data']['testname']);
  }
}
