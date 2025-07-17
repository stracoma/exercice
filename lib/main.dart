import 'package:flutter/material.dart';
import 'mesStyles.dart';
import 'SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      routes: {
        '/second': (context) => const SecondPage(),
        '/accueil': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Messtyles.monAppBar('Page d\'Accueil'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue dans mon application !',
              style: Messtyles.monTextStyle(),
            ),
            SizedBox(height: 20),
            Messtyles.monElevatedButton(
              context: context,
              text: 'Aller à la deuxième page',
              chemin: '/second',
              setStateCallback: () {
                setState(() {}); // Appelle setState pour mettre à jour l'état
              },
            ),
          ],
        ),
      ),
    );
  }
}
