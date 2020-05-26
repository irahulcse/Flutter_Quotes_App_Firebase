import 'package:flutter/material.dart';
import 'package:flutter_firebase_quotes_app/ui/common/quote_widget.dart';
import 'package:flutter_firebase_quotes_app/ui/pages/quote_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Full',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: QuoteScreen(),
      ),
    );
  }
}
