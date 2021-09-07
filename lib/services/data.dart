import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class DataEmpresario {
  List dataList = [];

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("empresario");

  Future getData() async {
    try {
      await collectionReference.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          dataList.add(result.data());
        }
      });

      return dataList;
    } catch (err) {
      debugPrint(err);
      return null;
    }
  }
}

class DataFuncionario {
  List dataList = [];

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("funcionario");

  Future getData() async {
    try {
      await collectionReference.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          dataList.add(result.data());
        }
      });

      return dataList;
    } catch (err) {
      debugPrint(err);
      return null;
    }
  }
}

class DataCliente {
  List dataList = [];

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("cliente");

  Future getData() async {
    try {
      await collectionReference.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          dataList.add(result.data());
        }
      });

      return dataList;
    } catch (err) {
      debugPrint(err);
      return null;
    }
  }
}
