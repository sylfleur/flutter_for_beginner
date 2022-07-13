import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApprendreFlutterPage extends StatefulWidget {
  const ApprendreFlutterPage({Key? key}) : super(key: key);

  @override
  State<ApprendreFlutterPage> createState() => _ApprendreFlutterPageState();
}

class _ApprendreFlutterPageState extends State<ApprendreFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Apprendre Flutter',
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/flutter_logo.png'),
          // const SizedBox(height: 20),
          const Divider(color: Colors.black),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.tealAccent,
            // height: 100,
            width: double.infinity,
            child: const Center(
              child: Text(
                'My Widget Text',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch? Colors.blueAccent: Colors.redAccent,
            ),
            onPressed: () {
              debugPrint('Elevated Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('Text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('Gesture Detector');
            },
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.amber,
                ),
                Text('Row Widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool value) {
                setState(() {
                  isSwitch = value;
                },);
              },),
              Checkbox(value: isCheckbox, onChanged: (bool? value){
                setState(() {
                  isCheckbox = value;
                });
              })
        ],
      ),
    );
  }
}
