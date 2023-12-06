import 'package:flutter/material.dart';

@immutable
class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onTap,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  final String text;

  final VoidCallback onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            backgroundColor: const Color.fromARGB(255, 41, 31, 57),
            shadowColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}

@immutable
class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    required this.text,
    required this.onTap,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  final String text;

  final VoidCallback onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            backgroundColor: const Color.fromARGB(255, 235, 129, 111),
            shadowColor: const Color.fromARGB(235, 235, 129, 111),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
