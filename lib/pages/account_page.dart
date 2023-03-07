import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem(BuildContext context,
      {required String name, required int number}) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }

  Widget itemTappedTile(
    BuildContext context, {
    required String title,
    String? subtitle,
    required IconData icon,
  }) {
    final size = MediaQuery.of(context).size;

    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: size.height * 0.03,
      ),
      onTap: () => debugPrint('$title clicked!'),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(
        Icons.chevron_right,
        size: size.height * 0.03,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: [
          Container(
            height: size.height * 0.25,
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
          Text(
            'Tarek Alabd',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
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
          const Divider(),
          itemTappedTile(context,
              title: 'Past Orders', icon: Icons.shopping_cart),
          const Divider(),
          itemTappedTile(context,
              title: 'Available Vouchers', icon: Icons.card_giftcard),
          const Divider(),
        ],
      ),
    );
  }
}
