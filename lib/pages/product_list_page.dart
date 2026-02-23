import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/cart_model.dart';
import 'cart_page.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  String searchQuery = '';
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Electronics',
    'Gadget',
    'Accessories',
  ];

  final List<Product> products = [
    Product(
      id: '1',
      name: 'Laptop Gaming',
      price: 15000000,
      emoji: '💻',
      description: 'Laptop gaming performa tinggi',
      category: 'Electronics',
    ),
    Product(
      id: '2',
      name: 'Smartphone Pro',
      price: 8000000,
      emoji: '📱',
      description: 'Smartphone flagship terbaru',
      category: 'Gadget',
    ),
    Product(
      id: '3',
      name: 'Wireless Headphones',
      price: 1500000,
      emoji: '🎧',
      description: 'Headphones noise-cancelling',
      category: 'Accessories',
    ),
    Product(
      id: '4',
      name: 'Smart Watch',
      price: 3000000,
      emoji: '⌚',
      description: 'Smartwatch dengan health tracking',
      category: 'Gadget',
    ),
    Product(
      id: '5',
      name: 'Camera DSLR',
      price: 12000000,
      emoji: '📷',
      description: 'Kamera DSLR profesional',
      category: 'Electronics',
    ),
    Product(
      id: '6',
      name: 'Tablet Pro',
      price: 7000000,
      emoji: '📟',
      description: 'Tablet untuk produktivitas',
      category: 'Gadget',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((product) {
      final matchSearch = product.name
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      final matchCategory =
          selectedCategory == 'All' ||
              product.category == selectedCategory;

      return matchSearch && matchCategory;
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF9E6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE082),
        title: const Text('Products'),
        actions: [
          Consumer<CartModel>(
            builder: (context, cart, child) {
              return Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CartPage(),
                        ),
                      );
                    },
                  ),
                  if (cart.itemCount > 0)
                    Positioned(
                      right: 6,
                      top: 6,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${cart.itemCount}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // SEARCH
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search product...',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),

          // CATEGORY
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButtonFormField<String>(
              value: selectedCategory,
              items: categories
                  .map((cat) =>
                      DropdownMenuItem(value: cat, child: Text(cat)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Category',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];

                return Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: const Color(0xFFFFF3CD),
                          child: Center(
                            child: Text(
                              product.emoji,
                              style: const TextStyle(fontSize: 64),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(
                              product.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Rp ${product.price.toStringAsFixed(0)}',
                              style: const TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<CartModel>()
                                      .addItem(product);
                                },
                                child: const Text('Add'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}