import 'package:produkt/productListPage.dart';
import 'package:flutter/material.dart';

class OrderConfirmPage extends StatelessWidget {
  final String productTitle;

  OrderConfirmPage({required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 100),
              const Text(
                'Ваш заказ успешно оформлен!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(productTitle, textAlign: TextAlign.center),
              const SizedBox(height: 10),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 24, 220, 31),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(color: Colors.black12),
                    ),
                  ),
                  child: const Text(
                    'Вернуться в каталог',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 217, 250, 207),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProductListPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
