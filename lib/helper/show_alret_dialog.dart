import 'package:flutter/material.dart';


void showAlertDialog(BuildContext context, {void Function()? continueOnPressed}) {

  // set up the buttons
  Widget cancelButton = TextButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Text("Cancel"),
  );
  Widget continueButton = TextButton(
    onPressed: continueOnPressed,
    child:  const Text("Continue"),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Warning"),
    content: const Text("Would you like to delete this note?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

