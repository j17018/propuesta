import 'package:eventos/button_menu.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8),
      color: const Color.fromARGB(255, 249, 249, 255),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonMenuWidget('Música'),
          ButtonMenuWidget('Deportes'),
          ButtonMenuWidget('AgroTurismo'),
        ],
      ),
    );
  }
}
