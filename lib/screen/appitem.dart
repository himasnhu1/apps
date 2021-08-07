import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String id;

  final String imageUrl;
  ProductItem(this.id, this.imageUrl);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool  _likeCheck = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: GridTile(
          child: Image.network(
            widget.imageUrl,
            fit: BoxFit.cover,
          ),
        footer: GridTileBar(
          leading: IconButton(
            icon: _likeCheck? Icon(Icons.favorite):Icon(Icons.favorite_border),
            onPressed: () {
              setState(() {
                _likeCheck =! _likeCheck;
              });
            },
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}