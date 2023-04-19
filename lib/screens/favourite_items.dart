// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';



class FavouriteItems extends StatefulWidget {
  FavouriteItems(
      {super.key,  required this.selectedItems});
  List<int> selectedItems;

  @override
  State<FavouriteItems> createState() => _FavouriteItemsState();
}

class _FavouriteItemsState extends State<FavouriteItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back),
          ),
        title: Text('favoriteitems list'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemCount: widget.selectedItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              if (widget.selectedItems.contains(widget.selectedItems[index])) {
                widget.selectedItems.remove(widget.selectedItems[index]);
              }

              setState(() {});
            },
            title: Text(
              'Items ' + widget.selectedItems[index].toString(),
            ),
            trailing: Icon(Icons.favorite),
          );

          // GestureDetector(
          //   onTap: () {
          //     selectedItems.add(index);
          //   },
          //   child: Container(
          //     color: Colors.red,
          //     height: 100,
          //     width: 100,            ),
          // );
        },
      ),
    );
  }
}
