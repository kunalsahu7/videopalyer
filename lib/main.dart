import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videopalyer/screens/video/provider/Homeprovider.dart';
import 'package:videopalyer/screens/video/view/videoscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => videoprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Home(),
        },
      ),
    ),
  );
}
