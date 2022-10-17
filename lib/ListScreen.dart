import 'package:flutter/material.dart';
import "./Data.dart";

class ListScreen extends StatelessWidget {
  Data store = Data();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: store.CategoryList.length,
      itemBuilder: (context, index) =>
          Categoryitem(categori: store.CategoryList[index]),
    );
  }
}

class Categoryitem extends StatelessWidget {
  Categori categori;
  Categoryitem({required this.categori});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("/product",
              arguments: {"id": categori.id, "name": categori.name});
        },
        child: ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(width: 4, color: Colors.black)),
          title: Text(categori.name),
          subtitle: Text(categori.desciption),
        ),
      ),
    );
  }
}
