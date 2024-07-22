// eventbox.dart
import 'package:eventos/palette.dart';
import 'package:flutter/material.dart';
import 'event_detail.dart'; // Import the new event detail screen

class EventBoxWidget extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  const EventBoxWidget(this.title, this.description, this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the EventDetailScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventDetailScreen(
              title: title,
              description: description,
              imageUrl: url,
            ),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Image on the left
              ClipOval(
                child: Image.network(
                  url,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16), // Space between image and text
              // Text on the right
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Palette.color6,
                      ),
                    ),
                    const SizedBox(height: 4), // Space between title and subtitle
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
