import 'package:eventos/event_box.dart';
import 'package:eventos/menu.dart';
import 'package:eventos/palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventos Manizales',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 140, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Eventos Manizales'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Palette.color7,
        // foregroundColor: const Color.fromARGB(255, 29, 104, 164),
        foregroundColor: Colors.white,
        title: Text(
          widget.title,
        ),
      ),
      body: const Column(
        children: [
          MenuWidget(),
          EventBoxWidget('Evento 1','Disfruta de un fin de semana con música en vivo, comida deliciosa y actividades para toda la familia. ¡No te lo pierdas!','https://picsum.photos/100/100'),
          EventBoxWidget('Evento 2',' Visita nuestra exposición de arte contemporáneo con obras de artistas emergentes. Inauguración el 15 de marzo. Entrada gratuita.','https://picsum.photos/100/110'),
          EventBoxWidget('Evento 3','Aprende a cocinar platos mediterráneos en nuestro taller práctico. Ideal para principiantes. ¡Inscríbete ahora!','https://picsum.photos/110/100'),
          EventBoxWidget('Evento 4','Únete a nuestra caminata en el Parque Nacional y descubre la flora y fauna local. Actividad gratuita para todas las edades.','https://picsum.photos/101/100'),
        ],
      ),
    );
  }
}
