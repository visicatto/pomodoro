import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
    required this.click,
  }) : super(key: key);

  final String texto;
  final IconData icone;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        textStyle: const TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              icone,
              size: 35,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
