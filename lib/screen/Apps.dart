import 'package:flutter/material.dart';

import 'appitem.dart';

class ProductApp  {
  final String id;
  final String imageUrl;
  ProductApp(this.id, this.imageUrl);
}


class Apps extends StatelessWidget {


 List<ProductApp>  _item = [
   ProductApp('p1', 'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
   ProductApp('p2', 'https://images.unsplash.com/photo-1535303311164-664fc9ec6532?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
   ProductApp('p1', 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
   ProductApp('p2', 'https://images.unsplash.com/photo-1611262588024-d12430b98920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'),
 ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Apps"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: _item.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (c, i) => ProductItem(
              _item[i].id,
              _item[i].imageUrl,
          )
      ),
    );
  }

}
