import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  void cadastrar(BuildContext context) {
    Navigator.pushNamed(context, "/cadastro");
  }

  void login(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");
  }

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shield, size: 60, color: Colors.blue),
            Text(
              "Central de Segurança",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "E-mail",
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Senha",
              ),
            ),
            ElevatedButton(
              onPressed: () => login(context),
              child: Text('Entrar'),
            ),
            TextButton(
              onPressed: () => cadastrar(context),
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}