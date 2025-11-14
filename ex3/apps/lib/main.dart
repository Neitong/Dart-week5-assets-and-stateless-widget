// lib/main.dart

import 'package:flutter/material.dart';
import 'package:apps/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto', // A common font, looks clean
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // This structure matches your 'image_2940ed.png' diagram
    return Scaffold(
      // Set background color to match the screenshot
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: Colors.white,
        elevation: 0, // Flat app bar
        foregroundColor: Colors.black87, // 'Products' text color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Root padding
        child: Column(
          // Layout buttons (cards) in a column
          children: const [
            ProductCard(product: Product.dart),
            SizedBox(height: 16), // Spacing between cards
            ProductCard(product: Product.flutter),
            SizedBox(height: 16), // Spacing between cards
            ProductCard(product: Product.firebase),
          ],
        ),
      ),
    );
  }
}

// ----------------------------------------------------
// PART 3: Create a Product widget (StatelessWidget)
// ----------------------------------------------------
// This widget's structure matches your 'image_293d4f.png' diagram
class ProductCard extends StatelessWidget {
  // The required parameter as requested
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    // Use Card widget to manage button style
    return Card(
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        // Add padding inside the card
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // Layout image + title + description in a column
          // Make all children start from the left
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the image from assets
            Image.asset(
              product.imagePath,
              height: 60, // Set a fixed height for the image
              fit: BoxFit.contain,
            ),
            // Add space (as suggested in 'image_293d4f.png')
            const SizedBox(height: 16),
            // Display the title
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add space
            const SizedBox(height: 8),
            // Display the description
            Text(
              product.description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}