import 'package:flutter/material.dart';

class EmptyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 150,
                left: 50,
              ),
              child: new Image.asset(
                'assets/note.png',
                width: 500,
              ),
            ),
          ),
          Text(
            'No Notes  :(',
            style: TextStyle(
              color: Colors.indigo.withOpacity(0.4),
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'You have no task to do',
            style: TextStyle(
              color: Color.fromARGB(255, 67, 144, 237).withOpacity(0.4),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
/*
  new Image.asset(
            'assets/notesImage.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
*/
