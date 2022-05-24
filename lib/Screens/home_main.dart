import 'package:flutter/material.dart';
import '../Components/EmptyHome.dart';
import 'NewNote.dart';
import 'view_notes.dart';
import '../provider/Note_Provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 49, 63, 255),
        title: const Text('My Notes'),
        elevation: 1,
      ),
      body: NoteClass.notes.isEmpty ?  EmptyHome() : const NotesList(),
      floatingActionButton: FloatingActionButton(
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.add_outlined,
            size: 40,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 37, 32, 193),
                Color.fromARGB(255, 51, 9, 88),
              ])),
        ),

        onPressed: () {
          //navigate to create new note page
          Navigator.push(
            context,
            //passes 0 to make new page note
            MaterialPageRoute(builder: (context) => CreateEditNote(0)),
          );
        },
        tooltip: 'create note', //description when hover the wedgit

        backgroundColor: Color.fromARGB(255, 49, 63, 255),
      ),
    );
  }
}
