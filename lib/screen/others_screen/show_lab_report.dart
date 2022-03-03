import 'package:flutter/material.dart';

class ShowLabReport extends StatefulWidget {
  const ShowLabReport({Key? key}) : super(key: key);

  @override
  State<ShowLabReport> createState() => _ShowLabReportState();
}

class _ShowLabReportState extends State<ShowLabReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Reporte'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}
