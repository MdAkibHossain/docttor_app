import 'package:flutter/material.dart';

class PatientTestHistory extends StatefulWidget {
  const PatientTestHistory({Key? key}) : super(key: key);

  @override
  State<PatientTestHistory> createState() => _PatientTestHistoryState();
}

class _PatientTestHistoryState extends State<PatientTestHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Test History'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => GestureDetector(
          child: const FadeInImage(
            placeholder: AssetImage('assets/images/upcoming.png'),
            image: NetworkImage("imageUrl"),
            fit: BoxFit.cover,
          ),
          onTap: () {
            // Viwe Image in Full Screen
          },
        ),

        itemCount: 10, // after setting api
      ),
    );
  }
}
