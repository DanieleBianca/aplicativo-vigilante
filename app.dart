import 'package:flutter/material.dart';
import 'login.dart';
import 'cadastro.dart';
import 'home.dart';
import 'ocorrencia.dart';
import 'panico.dart';
import 'chat.dart';
import 'historico.dart';

class SegurancaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/cadastro": (context) => CadastroPage(),
        "/home": (context) => HomePage(),
        "/ocorrencia": (context) => OcorrenciaPage(),
        "/panico": (context) => PanicoPage(),
        "/chat": (context) => ChatPage(),
        "/historico": (context) => HistoricoPage(),
      },
      initialRoute: "/login",
    );
  }
}