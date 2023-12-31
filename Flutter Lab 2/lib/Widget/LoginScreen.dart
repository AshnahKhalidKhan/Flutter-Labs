import 'package:flutter/material.dart';

const GoogleBlue = Color.fromARGB(255, 66, 133, 244);
const GoogleRed = Color.fromARGB(255, 234, 67, 53);
const GoogleYellow = Color.fromARGB(255, 251, 188, 5);
const GoogleGreen = Color.fromARGB(255, 52, 168, 83);
const White = Colors.white;

class LoginScreen extends StatelessWidget
{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        leading: const Icon(Icons.add),
        title: const Text("GDSC Pocket App"),
        backgroundColor: GoogleBlue,
        titleTextStyle: const TextStyle
        (
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Padding
      (
        padding: EdgeInsets.all(10.0),
        child: Column
        (
          children:
          [
            ElevatedButton.icon
            (
              icon: Icon
              (
                Icons.email_rounded,
                size: 40,
                color: GoogleBlue,
              ),
              style: ElevatedButton.styleFrom
              (
                backgroundColor: White,
                // foregroundColor: GoogleGreen, // Jub likhein to ye color ho jayay box ka
                side: BorderSide
                (
                  color: GoogleBlue,
                  width: 5,
                )
              ),
              onPressed: () {},
              label: TextField
              (
                decoration: InputDecoration
                (
                  hintText: "Enter Email",
                  // focusColor: GoogleRed,
                ),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle
                (
                  color: GoogleBlue,
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton.icon
            (
              icon: Icon
              (
                Icons.remove_red_eye_rounded,
                size: 40,
                color: GoogleBlue,
              ),
              style: ElevatedButton.styleFrom
              (
                backgroundColor: White,
                // foregroundColor: GoogleGreen, // Jub likhein to ye color ho jayay box ka
                side: BorderSide
                (
                  color: GoogleBlue,
                  width: 5,
                )
              ),
              onPressed: () {},
              label: TextField
              (
                decoration: InputDecoration
                (
                  hintText: "Enter Password",
                  // focusColor: GoogleRed,
                ),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle
                (
                  color: GoogleBlue,
                  fontSize: 20,
                ),
              ),
            ),
            FilledButton.icon
            (
              icon: Icon
              (
                Icons.login_rounded,
                size: 40,
                color: White,
              ),
              style: FilledButton.styleFrom
              (
                backgroundColor: GoogleBlue,
                // foregroundColor: GoogleGreen, // Jub likhein to ye color ho jayay box ka
                side: BorderSide
                (
                  color: GoogleBlue,
                  width: 5,
                )
              ),
              onPressed: () {},
              label: TextField
              (
                decoration: InputDecoration
                (
                  hintText: "Sign In",
                  // focusColor: GoogleRed,
                ),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle
                (
                  color: White,
                  fontSize: 20,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}