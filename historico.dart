import 'package:flutter/material.dart';

class HistoricoPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.directions_walk, color: Colors.orange),
            title: Text("Movimentação suspeita"),
            subtitle: Text("18/09/2026 - 15:42"),
            trailing: Text("Registrado"),
          ),
          ListTile(
            leading: Icon(Icons.warning, color: Colors.green),
            title: Text("Botão de pânico"),
            subtitle: Text("15/09/2026 - 21:10"),
            trailing: Text("Encerrado"),
          ),
          ListTile(
            leading: Icon(Icons.directions_car, color: Colors.green),
            title: Text("Veículo suspeito"),
            subtitle: Text("10/09/2026 - 18:25"),
            trailing: Text("Encerrado"),
          ),
        ],
      ),
    );
  }
}