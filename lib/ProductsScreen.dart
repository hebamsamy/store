import 'package:flutter/material.dart';
import 'Data.dart';

class ProductScreen extends StatelessWidget {
  Data store = Data();
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments! as Map<String, Object>;
    var list = store.filterByCategory(args['id'] as int);
    // var list = store.ProductList;
    print(list);
    return Scaffold(
      appBar: AppBar(
        title: Text(args['name'] as String),
      ),
      body: GridView.builder(
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
          itemBuilder: (context, index) => ProductItem(prd: list[index])),
    );
  }
}

class ProductItem extends StatelessWidget {
  ProductItem({required this.prd});
  Product prd;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        prd.imgURL,
        fit: BoxFit.contain,
      ),
      header: Text(prd.name),
      footer: Text("${prd.price} \$"),
    );
  }
}
