import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'add_product.dart';

class GetProductScreen extends StatefulWidget {
  const GetProductScreen({Key? key, required this.sku}) : super(key: key);
  final String sku;
  @override
  State<GetProductScreen> createState() => _GetProductScreenState();
}

class _GetProductScreenState extends State<GetProductScreen> {
  bool loading = true;
  bool found = false;
  dynamic product;

  @override
  void initState() {
    // TODO: implement initState
    getProduct();
    super.initState();
  }

  void getProduct() async {
    var url = Uri.parse(
        'https://ade-server.glitch.me/api/v1/items/sku/${widget.sku}');
    var response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      if (jsonDecode(response.body)['found']) {
        setState(() {
          product = jsonDecode(response.body)['item'];
          found = true;
          loading = false;
        });
      } else {
        setState(() {
          found = false;
          loading = false;
        });
      }
    } else {
      throw Exception("Error");
    }
  }

  void addProduct() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AddProduct(
              sku: widget.sku,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: found
                    ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Text("Sku: ${product['sku']}"),
                          Text("${product['title']}"),
                          Text("${product['description']}"),
                          const Spacer(),
                        ],
                      )
                    : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          const Text("Product not found"),
                          ElevatedButton(
                              onPressed: () => addProduct(),
                              child: const Text('Add Product')),
                          const Spacer(),
                        ],
                      ),
              ),
          ),
    );
  }
}
