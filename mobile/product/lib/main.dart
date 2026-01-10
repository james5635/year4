import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: 1, name: 'Laptop', price: 999.99),
      Product(id: 2, name: 'Smartphone', price: 499.99),
      Product(id: 3, name: 'Headphones', price: 199.99),
      Product(id: 4, name: 'Fan', price: 19.99),
    ];
    return MaterialApp(
      title: 'mini_catalog_app',
      routes: {
        '/productDetail': (context) => ProductDetailPage(
          product: ModalRoute.of(context)!.settings.arguments as Product,
        ),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Product'),
          backgroundColor: Colors.amber,
        ),
        body: ListView.separated(
          itemCount: products.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
              onTap: () async {
                final result = await Navigator.pushNamed(
                  context,
                  '/productDetail',
                  arguments: product,
                );
                if (result == 'added') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${product.name} added to cart'),
                    backgroundColor: Colors.green,
                    
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    String? productImage;
    switch (product.id) {
      case 1:
        productImage =
            'https://m.media-amazon.com/images/I/8137DSe7VHL._AC_SL1500_.jpg';
        break;
      case 2:
        productImage =
            'https://m.media-amazon.com/images/I/61qJX973fRL._AC_SL1500_.jpg';
        break;
      case 3:
        productImage =
            'https://i5.walmartimages.com/seo/Sennheiser-HD-350BT-Bluetooth-5-0-Wireless-Headphone-30-Hour-Battery-Life-USB-C-Fast-Charging-Virtual-Assistant-Button-Foldable-Black_574ede36-87bb-4db5-b90a-32b58504f60e.bc5bc96a04865007ef32dd5d226a8663.jpeg';
        break;
      default:
        productImage = null;
    }

    return Scaffold(
      appBar: AppBar(title: Text(product.name), backgroundColor: Colors.amber),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productImage != null
                ? Image.network(
                    productImage,
                    width: double.infinity,
                    height: 400,
                  )
                : FlutterLogo(size: 400),
            SizedBox(height: 16),
            Text("\$${product.price}", style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'added');
              },
              child: Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}
