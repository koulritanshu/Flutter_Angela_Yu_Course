import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;

  final VoidCallback onClick;

  RoundIconButton({required this.icon, required this.onClick});

  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(
      elevation : 0.0,
      onPressed: onClick,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon,
        color: Colors.white,
      ),
    );
  }

}