import 'package:design/screen/get_started.dart';
import 'package:flutter/material.dart';

class FindAccount extends StatefulWidget {
  const FindAccount({Key? key}) : super(key: key);

  @override
  _FindAccountState createState() => _FindAccountState();
}

class _FindAccountState extends State<FindAccount> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.05, right: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.05),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: allColor.backGroundColor),
                        onPressed: () {},
                        child: Text(
                          "Dr. Mahmood",
                          style: TextStyle(fontSize: screenWidth * 0.05),
                        )),
                    const Spacer(),
                    SizedBox(
                      height: screenHeight * 0.08,
                      child: Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.05),
                        child: const Image(
                            image: AssetImage("assets/images/men.png")),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.05),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: allColor.textFieldColor,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusColor: Colors.black12,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter code",
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: allColor.textFieldColor,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusColor: Colors.black12,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "New Password",
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: allColor.textFieldColor,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusColor: Colors.black12,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Confirm Password",
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                SizedBox(
                  width: screenWidth,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {},
                      child: Text(
                        "Update",
                        style: TextStyle(fontSize: screenWidth * 0.04),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
