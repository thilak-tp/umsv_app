import 'package:flutter/material.dart';

class ControllerButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double borderRadius;
  // final Color color;
  const ControllerButton(
      {Key? key,
      required this.child,
      this.borderRadius = 30,
      // required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        color: const Color(0XFF2e2e2e),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color.fromARGB(255, 228, 22, 22),
            Color.fromARGB(255, 0, 0, 0)
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0XFF1c1c1c),
            offset: Offset(5.0, 5.0),
            blurRadius: 10.0,
          ),
          BoxShadow(
            color: Color(0XFF404040),
            offset: Offset(-5.0, -5.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                colors: [Color(0XFF303030), Color(0XFF1a1a1a)]),
          ),
          child: MaterialButton(
            // color: color,
            minWidth: 0,
            onPressed: onPressed,
            shape: const CircleBorder(),
            child: child,
          ),
        ),
      ),
    );
  }
}
