import 'package:flutter/material.dart';

void main() {
  runApp(ControlProductApp());
}

class ControlProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final List<String> products = [
    'Carne',
    'Pescado',
    'Leche',
    'Congelados',
    'Atún',
    'Manzana',
    'Uvas',
    'Cafe',
    'Platano',
    'Limon',
    'Mango',
    'Naranja',
    'Arroz',
    'Papaya',
    'Azucar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control de Productos'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          final firstLetter = product.substring(0, 1).toUpperCase();

          final colorIndex = index % 3;
          Color iconColor = Colors.blue;

          switch (colorIndex) {
            case 0:
              iconColor = Colors.blue;
              break;
            case 1:
              iconColor = Colors.deepPurple;
              break;
            case 2:
              iconColor = Colors.red;
              break;
          }

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: iconColor,
              child: Text(
                firstLetter,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(product),
          );
        },
      ),
    );
  }
}
