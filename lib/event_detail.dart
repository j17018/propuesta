// event_detail.dart
import 'package:eventos/button_menu.dart';
import 'package:eventos/palette.dart';
import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const EventDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(235, 98, 46, 255),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.network(
                  imageUrl,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Palette.color6),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Image.asset('assets/images/2_.png'),
              const Padding(padding: EdgeInsets.all(5)),
              const Text(
                'Ubicación',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Palette.color6,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Image.asset('assets/images/1_.png'),
              const Padding(padding: EdgeInsets.all(5)),
              const Text(
                'Categorías',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Palette.color6,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonMenuWidget('Música'),
                  ButtonMenuWidget('Arte'),
                  ButtonMenuWidget('Cultura'),
                ],
              ),
              const Padding(padding: EdgeInsets.all(5)),
            ],
          ),
        ),
      ),
    );
  }
}
