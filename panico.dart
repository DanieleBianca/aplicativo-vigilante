import 'package:flutter/material.dart';

class PanicoPage extends StatelessWidget {
  void confirmar(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/chat");
  }

  void cancelar(BuildContext context) {
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
            Icon(Icons.warning, size: 80, color: Colors.red),
            Text(
              "Acionar botão de pânico?",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text("Use somente quando precisar de ajuda imediata."),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () => confirmar(context),
              child: Text('CONFIRMAR'),
            ),
            TextButton(
              onPressed: () => cancelar(context),
              child: Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}