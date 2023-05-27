import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/app_assets.dart';

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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Platform.isAndroid
        ? ListTile(
            title: Text(title),
            leading: Icon(
              icon,
              size: isLandscape ? size.height * 0.09 : size.height * 0.03,
            ),
            onTap: () => debugPrint('$title clicked!'),
            subtitle: subtitle != null ? Text(subtitle) : null,
            trailing: Icon(
              Icons.chevron_right,
              size: isLandscape ? size.height * 0.09 : size.height * 0.03,
            ),
          )
        : CupertinoListTile(
            title: Text(title),
            leading: Icon(
              icon,
              color: Colors.deepOrange,
              size: isLandscape ? size.height * 0.09 : size.height * 0.03,
            ),
            onTap: () => debugPrint('$title clicked!'),
            subtitle: subtitle != null ? Text(subtitle) : null,
            trailing: Icon(
              CupertinoIcons.chevron_right,
              color: Colors.deepOrange,
              size: isLandscape ? size.height * 0.09 : size.height * 0.03,
            ),
          );
  }

  Widget personPhoto(double width, double height) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            AppAssets.profilePhoto,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final nameText = Text(
      'Tarek Alabd',
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          if (!isLandscape) ...[
            personPhoto(size.width * 0.5, size.height * 0.25),
            nameText,
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                orderVoucherItem(context, name: 'Orders', number: 50),
                orderVoucherItem(context, name: 'Vouchers', number: 10),
              ],
            ),
            const SizedBox(height: 24.0),
          ],
          if (isLandscape) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    personPhoto(size.width * 0.25, size.height * 0.5),
                    const SizedBox(height: 8.0),
                    nameText,
                  ],
                ),
                Column(
                  children: [
                    orderVoucherItem(context, name: 'Orders', number: 50),
                    const SizedBox(height: 16.0),
                    orderVoucherItem(context, name: 'Vouchers', number: 10),
                  ],
                ),
              ],
            ),
          ],
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
