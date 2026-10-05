import 'package:flutter/material.dart';

class OcorrenciaPage extends StatelessWidget {
  void registrar(BuildContext context) {
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar ocorrência"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.directions_walk),
            title: Text("Movimentação suspeita"),
            subtitle: Text("Movimentação incomum no local"),
            onTap: () => registrar(context),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pessoa suspeita"),
            subtitle: Text("Pessoa em situação incomum"),
            onTap: () => registrar(context),
          ),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text("Veículo suspeito"),
            subtitle: Text("Veículo em situação incomum"),
            onTap: () => registrar(context),
          ),
          ListTile(
            leading: Icon(Icons.warning),
            title: Text("Situação de risco"),
            subtitle: Text("Outro tipo de situação"),
            onTap: () => registrar(context),
          ),
        ],
      ),
    );
  }
}