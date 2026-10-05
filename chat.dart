import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Central de atendimento"),
      ),
      body: Column(
        children: [
          // Conversa
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Guarda João"),
                  subtitle: Text("Estou a caminho."),
                  leading: CircleAvatar(child: Icon(Icons.support_agent)),
                  trailing: Text("15:40"),
                ),
                ListTile(
                  title: Text("Você"),
                  subtitle: Text("Pode verificar este local?"),
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  trailing: Text("15:38"),
                ),
              ],
            ),
          ),
          // Mensagens prontas
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              spacing: 10,
              children: [
                Text(
                  "Mensagens rápidas",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Estou seguro"),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Preciso de ajuda"),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Verifique o local"),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Não estou seguro"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}