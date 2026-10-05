import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  void cadastrar(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");
  }

  void voltar(BuildContext context) {
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Criar conta",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome",
              ),
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
              onPressed: () => cadastrar(context),
              child: Text('Cadastrar'),
            ),
            TextButton(
              onPressed: () => voltar(context),
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}