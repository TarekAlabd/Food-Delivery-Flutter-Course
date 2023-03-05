import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem(BuildContext context, {required String name, required int number}) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
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

  Widget itemTappedTile(
    BuildContext context,
    {
    required String title,
    String? subtitle,
    required IconData icon,
  }) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: 35,
        color: Theme.of(context).primaryColor,
      ),
      onTap: () => debugPrint('$title clicked!'),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(
        Icons.chevron_right,
        size: 25,
        color: Theme.of(context).primaryColor,
      ),
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
              orderVoucherItem(context, name: 'Orders', number: 50),
              orderVoucherItem(context, name: 'Vouchers', number: 10),
            ],
          ),
          const SizedBox(height: 24.0),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          itemTappedTile(context, title: 'Past Orders', icon: Icons.shopping_cart),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          itemTappedTile(
              context, title: 'Available Vouchers', icon: Icons.card_giftcard),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
