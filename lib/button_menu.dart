import 'package:flutter/material.dart';

class ButtonMenuWidget extends StatelessWidget {
  final String title;
  const ButtonMenuWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: const ButtonStyle(
        
        // backgroundColor: WidgetStatePropertyAll(
        //   Palette.color1,
        // ),
        // foregroundColor: WidgetStatePropertyAll(
        //   Palette.color5,
        // ),
      ),
      child: Text(title),
    );
  }
}
