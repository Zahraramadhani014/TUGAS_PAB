import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/cart_model.dart';
import 'pages/product_list_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart (Mini E-Commerce Shopping Cart)',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF9E6),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFD54F)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFE082),
          foregroundColor: Colors.black,
        ),
      ),
      home: const ProductListPage(),
    );
  }
}
