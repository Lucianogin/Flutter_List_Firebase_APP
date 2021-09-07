import 'package:flutter/material.dart';
import 'package:todo_flutter/services/data.dart';

class DadosFuncionario extends StatefulWidget {
  @override
  _DadosFuncionarioState createState() => _DadosFuncionarioState();
}

class _DadosFuncionarioState extends State<DadosFuncionario> {
  List dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Funcionários")),
      body: FutureBuilder(
          future: DataFuncionario().getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text("Algo deu Errado!");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              dataList = snapshot.data as List;
              return buildItems(dataList);
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }

  Widget buildItems(dataList) => ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: dataList.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            dataList[index]["nome"],
          ),
          subtitle: Text(dataList[index]["email"]),
        );
      });
}
