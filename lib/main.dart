import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_flutter/screens/dadosCliente.dart';
import 'package:todo_flutter/screens/dadosFuncionario.dart';
import 'package:todo_flutter/screens/home.dart';
import 'package:todo_flutter/screens/dadosEmpresario.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/empresario': (context) => DadosEmpresario(),
        '/funcionario': (context) => DadosFuncionario(),
        '/cliente': (context) => DadosCliente()
      },
      title: 'Dados de uma Empresa',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
