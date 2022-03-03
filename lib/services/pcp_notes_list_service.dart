import 'dart:convert';

import 'package:design/models/pcp_notest_list_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api.dart';

class PcpNotestListService with ChangeNotifier {
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

  fetchPcpList(
    String id,
  ) async {
    if (pcpNotes == null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');

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
          await http.get(Uri.parse('${Api().baseUrl}/doctor_note_list/201'),
              // body: data,
              headers: header);

      var responsebody = jsonDecode(response.body);

      if (responsebody["error"] == false) {
        pcpNotes = PcpNotestListModel.fromJson(jsonDecode(response.body));

        setLoadingFalse();
        notifyListeners();
      } else {
        //something went wrong

        pcpNotes = "error";

        setLoadingFalse();
      }
    }
  }
}
