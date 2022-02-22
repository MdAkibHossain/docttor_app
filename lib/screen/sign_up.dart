import 'package:design/screen/phone_number_verify.dart';
import 'package:flutter/material.dart';

import '../helper/custom_text_field.dart';
import 'get_started.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

final _signUpKey = GlobalKey<FormState>();
TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();
TextEditingController _confirmPassController = TextEditingController();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _signUpKey,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, right: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    height: screenHeight * 0.27,
                    width: screenWidth,
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.06),
                        Container(
                          color: Colors.white,
                          width: screenWidth,
                          height: screenHeight * 0.12,
                          child: Image.asset("assets/images/k.jpeg"),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Center(
                          child: Text("Kambaii Health",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.07,
                                  color: allColor.blackTextColor)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.02,
                  ),
                  CustomTextField(
                    controller: _emailController,
                    hintText: "Enter your name",
                    suffixIcon: Icon(Icons.drive_file_rename_outline),
                    obsecureValue: false,
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Text(
                      "Phone",
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.02,
                  ),
                  CustomTextField(
                    controller: _emailController,
                    hintText: "Enter your phone number",
                    suffixIcon: Icon(Icons.email),
                    obsecureValue: false,
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Text(
                      "Password",
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.02,
                  ),
                  CustomTextField(
                    controller: _passController,
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    obsecureValue: true,
                  ),
                  SizedBox(height: screenWidth * 0.06),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Text(
                      "Confirm password",
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.02,
                  ),
                  CustomTextField(
                    controller: _passController,
                    hintText: "Re-type your password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    obsecureValue: true,
                  ),
                  SizedBox(height: screenWidth * 0.10),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: allColor.elevatedBtnColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          if (_signUpKey.currentState!.validate())
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhoneNumberVerify()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.10,
                              right: screenWidth * 0.10,
                              top: screenWidth * 0.03,
                              bottom: screenWidth * 0.03),
                          child: Text(
                            "Sign up",
                            style: TextStyle(fontSize: screenWidth * 0.05),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
