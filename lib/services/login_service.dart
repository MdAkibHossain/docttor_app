import 'dart:convert';

import 'package:design/screen/get_started.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/api.dart';
import '../helper/others_helper.dart';
import '../models/login_model.dart';
import '../screen/home_page.dart';

class LoginService with ChangeNotifier {
  var loginDetails;

  bool isloading = false;

  setLoadingTrue() {
    isloading = true;
    notifyListeners();
  }

  setLoadingFalse() {
    isloading = false;
    notifyListeners();
  }

  login(String phone, String pass, BuildContext context,
      {bool isfromLoginPage = true}) async {
    setLoadingTrue();
    var data = jsonEncode({
      'username': phone,
      'password': pass,
    });
    var header = {
      //if header type is application/json then the data should be in jsonEncode method
      "Accept": "application/json",
      "Content-Type": "application/json"
    };

    var response = await http.post(Uri.parse('${Api().baseUrl}/login'),
        body: data, headers: header);
    var responsebody = jsonDecode(response.body);

    if (responsebody["error"] == false) {
      loginDetails = LoginModel.fromJson(jsonDecode(response.body));

      OthersHelper().showToast("Login successful", allColor.backGroundColor);

      setLoadingFalse();

      if (isfromLoginPage == true) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const HomePage()),
            (Route<dynamic> route) => false);
      }

      // debugPrint(loginDetails.data.jwtToken[0].original.accessToken);

      saveDatatoLocal(
          loginDetails.data.jwtToken[0].original.accessToken,
          loginDetails.data.jwtToken[0].original.tokenType,
          phone,
          pass,
          context);

      notifyListeners();
    } else {
      //Login failed

      setLoadingFalse();
      OthersHelper()
          .showToast("Phone or password is not correct", allColor.redColor);
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
