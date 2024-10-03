import 'package:flutter/material.dart';

class PembayaranPage extends StatelessWidget {
  final String fullname;
  final String email;
  final int totalRoom;
  final int totalNight;
  final double productPrice;

  const PembayaranPage({
    super.key,
    required this.fullname,
    required this.email,
    required this.totalRoom,
    required this.totalNight,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    double totalPrice = totalRoom * totalNight * productPrice;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name: $fullname',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Email: $email',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Total Room: $totalRoom',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Total Night: $totalNight',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Price per Night:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$$productPrice',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Total Price:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$$totalPrice',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Pembayaran berhasil'), 
                    ),
                  );
                },
                child: const Text(
                  'Bayar',
                  style: TextStyle(fontSize: 16,color: Colors.white), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
