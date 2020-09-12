import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 3,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.black12),
              ),
            ),
          ]),
    );
  }
}
