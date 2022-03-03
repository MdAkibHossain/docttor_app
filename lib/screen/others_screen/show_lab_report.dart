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
        body: ListTile(
          title: Text('title'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("imageUrl"),
          ),
          trailing: SizedBox(
            width: 100,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  color: Theme.of(context).primaryColor,
                ),
                IconButton(
                  onPressed: () async {},
                  icon: const Icon(Icons.delete),
                  color: Theme.of(context).errorColor,
                ),
              ],
            ),
          ),
        ));
  }
}
