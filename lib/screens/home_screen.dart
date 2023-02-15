import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Home Screen'),
        elevation: 10,
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Numero de taps: ',
            style: estiloTexto,
          ),
          Text(
            '$contador',
            style: estiloTexto,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 204, 0),
        foregroundColor: Colors.black,
        onPressed: () {
          contador++;
          print('Presione el botón');
          print(contador);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
