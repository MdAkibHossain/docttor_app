import 'dart:convert';

import 'package:design/screen/get_started.dart';
import 'package:design/services/login_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api.dart';
import '../helper/others_helper.dart';
import '../models/login_model.dart';
import '../screen/home_page.dart';

class SignupService with ChangeNotifier {
  var signupDetails;

  bool isloading = false;

  setLoadingTrue() {
    isloading = true;
    notifyListeners();
  }

  setLoadingFalse() {
    isloading = false;
    notifyListeners();
  }

  signUp(String firstName, String lastName, String phone, String pass,
      String email, BuildContext context) async {
    setLoadingTrue();
    var data = jsonEncode({
      'firstname': firstName,
      'lastname': lastName,
      'mobile': phone,
      'password': pass,
      'email': email,
      'type': "doctor",
      'is_external': '1',
    });
    var header = {
      //if header type is application/json then the data should be in jsonEncode method
      "Accept": "application/json",
      "Content-Type": "application/json"
    };

    var response = await http.post(Uri.parse('${Api().baseUrl}/register'),
        body: data, headers: header);
    var responsebody = jsonDecode(response.body);

    if (responsebody["error"] == false) {
      // signupDetails = LoginModel.fromJson(jsonDecode(response.body));

      OthersHelper()
          .showToast("Registration successful", allColor.backGroundColor);

      setLoadingFalse();

      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );

      //  try to login
      Provider.of<LoginService>(context, listen: false)
          .login(phone, pass, context, isfromLoginPage: false);

      notifyListeners();
    } else {
      //registration failed

      setLoadingFalse();
      OthersHelper().showToast(responsebody["msg"], allColor.redColor);
    }
  }

  //save access token to local database
  saveDatatoLocal(token, tokenType, phone, pass, context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    prefs.setString('tokenType', tokenType);
    prefs.setString('phone', phone);
    prefs.setString('pass', pass);
  }
}
