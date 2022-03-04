import 'dart:io';

import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/lab_report.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          if (await controller.canGoBack()) {
            controller.goBack();
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: allColor.backGroundColor,
              title: Text("Medical history"),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: IconButton(
                      onPressed: () async {
                        controller.reload();
                      },
                      icon: const Icon(Icons.refresh)),
                )
              ]),
          body: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl:
                "https://dev.kambaiihealth.com/MedicalHistory_view_for_app/718/739",
            onWebViewCreated: (controller) {
              this.controller = controller;
            },
          ),
        ),
      ),
    );
  }
}
