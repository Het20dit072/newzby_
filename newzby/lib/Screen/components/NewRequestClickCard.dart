import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewRequestOverlay extends StatelessWidget {
  String name = '';

  String ButtonText = '';

  NewRequestOverlay({
    required this.name,
    required this.ButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 16.0, left: 20, right: 20, bottom: 10),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color(0xFF2697FF).withOpacity(0.15),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 30,
              height: MediaQuery.of(context).size.height / 40,
              decoration: BoxDecoration(
                  color: Color(0xffEEE6E2),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  ButtonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
