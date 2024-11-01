import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoeCatalogScreen(),
    );
  }
}

class ShoeCatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shoes',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'), // Replace with actual profile image asset
                  radius: 24,
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ShoeCard(
                    imageUrl: 'images/gambar1.jpg', // Replace with actual asset path
                    name: 'Nike SB Zoom Blazer Mid Premium',
                    description: 'Men\'s Shoes',
                    price: '₹8,795',
                    color: Colors.purple.shade100,
                  ),
                  ShoeCard(
                    imageUrl: 'images/gambar2.jpg', // Replace with actual asset path
                    name: 'Nike Air Zoom Pegasus',
                    description: 'Men\'s Road Running Shoes',
                    price: '₹9,995',
                    color: Colors.green.shade100,
                  ),
                  ShoeCard(
                    imageUrl: 'images/gambar3.jpg', // Replace with actual asset path
                    name: 'Nike ZoomX Vaporfly',
                    description: 'Men\'s Road Racing Shoe',
                    price: '₹18,695',
                    color: Colors.pink.shade100,
                  ),
                  ShoeCard(
                    imageUrl: 'images/gambar4.jpg', // Replace with actual asset path
                    name: 'Nike Air Force 1 S50',
                    description: 'Older Kid\'s Shoe\n1 Colour',
                    price: '₹6,295',
                    color: Colors.grey.shade100,
                  ),
                  ShoeCard(
                    imageUrl: 'images/gambar5.jpg', // Replace with actual asset path
                    name: 'Nike Waffle One',
                    description: 'Men\'s Shoes',
                    price: '₹8,295',
                    color: Colors.yellow.shade100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final Color color;

  const ShoeCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
