import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem({required String name, required int number}) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.deepOrange,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/tarek.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Tarek Alabd',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(name: 'Orders', number: 50),
              orderVoucherItem(name: 'Vouchers', number: 10),
            ],
          ),
        ],
      ),
    );
  }
}
