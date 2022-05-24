import 'package:flutter/material.dart';
import 'Components/EmptyHome.dart';
import 'Screens/Splash.dart';
import 'provider/Note_Provider.dart';
import 'Components/share.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteClass.fillListFromDB();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      home: Scaffold(
        body: Splash(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

