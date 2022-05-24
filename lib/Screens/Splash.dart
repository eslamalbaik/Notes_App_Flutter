import 'package:flutter/material.dart';
import '../Components/EmptyHome.dart';
import 'home_main.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xfff1f7fc),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              //image Splash
              Padding(
                padding: const EdgeInsets.only(
                  right: 48.0,
                  left: 48.0,
                  top: 200.0,
                  bottom: 53,
                ),
                child: Image(
                  image: AssetImage(
                    'assets/Capture-removebg-preview.png',
                  ),
                  height: 350,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                elevation: 10,
                height: 60,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                color: Color.fromARGB(255, 49, 63, 255),
                child: Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
