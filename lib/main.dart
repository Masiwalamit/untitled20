import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment for Appbuddy'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Payment Method',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 16.0),
            PaymentMethodCard(
              icon: Icons.credit_card,
              backgroundColor: Colors.blue.shade400,
              cardTitle: 'Credit Card',
            ),
            const SizedBox(height: 16.0),
            PaymentMethodCard(
              icon: Icons.payment,
              backgroundColor: Color(0xFF448AFF),

              cardTitle: 'PayPal',
            ),
            const SizedBox(height: 16.0),
            PaymentMethodCard(
              icon: Icons.phone_android,
              backgroundColor: Colors.blue.shade600,
              cardTitle: 'Mobile Payment',
            ),
            const SizedBox(height: 16.0),
            PaymentMethodCard(
              icon: Icons.payment,
              backgroundColor: Colors.blue.shade700,
              cardTitle: 'Debit Card',
            ),
            const SizedBox(height: 16.0),
            PaymentMethodCard(
              icon: Icons.payments,
              backgroundColor: Colors.blue.shade800,
              cardTitle: 'Net Banking',
            ),
            const SizedBox(height: 16.0),
            PaymentMethodCard(
              icon: Icons.wallet,
              backgroundColor: Colors.blue.shade900,
              cardTitle: 'Wallet',
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final String cardTitle;

  PaymentMethodCard({
    required this.icon,
    required this.backgroundColor,
    required this.cardTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 36.0,
          ),
          SizedBox(width: 16.0),
          Text(
            cardTitle,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
