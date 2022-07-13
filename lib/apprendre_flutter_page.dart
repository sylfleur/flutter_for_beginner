import 'package:flutter/material.dart';

class ApprendreFlutterPage extends StatefulWidget {
  const ApprendreFlutterPage({Key? key}) : super(key: key);

  @override
  State<ApprendreFlutterPage> createState() => _ApprendreFlutterPageState();
}

class _ApprendreFlutterPageState extends State<ApprendreFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Apprendre Flutter',
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back),),
      ),
    );
  }
}
