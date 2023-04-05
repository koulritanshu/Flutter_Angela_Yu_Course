import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  final VoidCallback onClick;
  final String buttonTitle;

  BottomButton({required this.onClick, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: const Color(kPink),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}