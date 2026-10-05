import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void sair(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/login");
  }

  void ocorrencia(BuildContext context) {
    Navigator.pushNamed(context, "/ocorrencia");
  }

  void panico(BuildContext context) {
    Navigator.pushNamed(context, "/panico");
  }

  void chat(BuildContext context) {
    Navigator.pushNamed(context, "/chat");
  }

  void historico(BuildContext context) {
    Navigator.pushNamed(context, "/historico");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Área monitorada"),
        actions: [
          IconButton(onPressed: () => chat(context), icon: Icon(Icons.chat)),
          IconButton(onPressed: () => historico(context), icon: Icon(Icons.history)),
          IconButton(onPressed: () => sair(context), icon: Icon(Icons.logout)),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
            // Espaço reservado para o mapa
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: Icon(Icons.map, size: 100, color: Colors.grey),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => ocorrencia(context),
              child: Text('Registrar ocorrência'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () => panico(context),
              child: Text('BOTÃO DE PÂNICO'),
            ),
          ],
        ),
      ),
    );
  }
}