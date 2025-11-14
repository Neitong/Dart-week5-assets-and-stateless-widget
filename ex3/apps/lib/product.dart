// lib/product.dart

enum Product {
  dart(
    title: 'Dart',
    description: 'the best object languuage',
    imagePath: 'assets/dart.png',
  ),
  flutter(
    title: 'Flutter',
    description: 'the best mobile widet library',
    imagePath: 'assets/flutter.png',
  ),
  firebase(
    title: 'Firebase',
    description: 'the best cloud database',
    imagePath: 'assets/firebase.png',
  );

  final String title;
  final String description;
  final String imagePath;

  const Product({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}