import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'get_product_screen.dart';

class ProductInventory extends StatefulWidget {
  const ProductInventory({Key? key}) : super(key: key);

  @override
  State<ProductInventory> createState() => _ProductInventoryState();
}

class _ProductInventoryState extends State<ProductInventory> {
  //String _scanBarcode = 'Unknown';

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;

    print(barcodeScanRes);
    setState(() {
      //_scanBarcode = barcodeScanRes;
    });
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GetProductScreen(
              sku: barcodeScanRes,
            )));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
                onPressed: () => scanBarcodeNormal(),
                child: const Text('Scan Item')),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
