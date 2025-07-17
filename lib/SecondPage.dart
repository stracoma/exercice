import 'package:couper3/mesStyles.dart';
import 'package:flutter/material.dart';
//import 'mesStyles.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deuxième Page'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenue sur la deuxième page !',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            Messtyles.monElevatedButton(
              context: context,
              text: "aller à la page d'accueil",
              chemin: "/accueil",
              setStateCallback: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
