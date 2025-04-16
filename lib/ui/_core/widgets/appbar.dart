import 'package:delivery/ui/_core/bag_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

AppBar getAppBar({required BuildContext context, String? title}) {
  BagProvider bagProvider = Provider.of<BagProvider>(context);
  return AppBar(
    title: title != null ? Text(title) : null,
    centerTitle: true,
    actions: [
      badges.Badge(
        showBadge: bagProvider.dishesOnBag.isNotEmpty,
        position: badges.BadgePosition.bottomStart(start: 0, bottom: 0),
        badgeContent: Text(
          bagProvider.dishesOnBag.length.toString(),
          style: TextStyle(fontSize: 10.0),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_basket),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.black,
            ), // Cor de fundo
            iconColor: WidgetStatePropertyAll(Colors.grey), // Cor do ícone
          ),
        ),
      ),
    ],
  );
}
