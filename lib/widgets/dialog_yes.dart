// import 'package:flutter/material.dart';

// class DialogYes extends ConsumerWidget {
//   const DialogYes({Key key}) : super(key: key);
// }
import 'package:flutter/material.dart';

void _showNewVersionAvailableDialog(BuildContext context) {
  final alert = AlertDialog(
    title: Text("Error"),
    content: Text("There was an error during login."),
    actions: [FlatButton(child: Text("OK"), onPressed: () {})],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
