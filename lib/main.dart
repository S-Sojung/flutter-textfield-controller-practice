import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:texteditcontroller_app/another_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = TextEditingController();
  final controller2 = TextEditingController();
  var a;
  var b;
  var sum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Application'),
        leading: IconButton(icon: Icon(Icons.account_box), onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnotherPage())
          );
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              controller: controller,
              // 1
              maxLines: 1,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onSubmitted: (value) {
                a = value;
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
              ],
              controller: controller2,
              // 1
              maxLines: 1,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onSubmitted: (value) {
                print(value);
                b = value;
              },
            ),
            TextButton(onPressed: () {
              sum = int.parse(a) + int.parse(b);
              print(sum);
            }
                , child: Text("더하기"))
          ],
        ),
      ),
    );
  }
}