

import 'package:flutter/material.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  var inputTitle;
  final amountInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "title",
                focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onChanged: (val) => inputTitle = val,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Amount",
                focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              controller: amountInputController,
            ),
            ElevatedButton(
                onPressed: () {
                  print("$inputTitle, ${amountInputController.text}");
                },
                child: Text("gd "))
          ],
        ),
      ),
    );
  }
}


