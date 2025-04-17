import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/bag_provider.dart';
import 'package:myapp/ui/checkout/checkout_screen.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class TechTasteAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;

  const TechTasteAppBar({super.key, this.title});

  @override
  State<TechTasteAppBar> createState() => _TechTasteAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TechTasteAppBarState extends State<TechTasteAppBar> {
  @override
  Widget build(BuildContext context) {
    final BagProvider provider = Provider.of<BagProvider>(context);

    return AppBar(
      title:
          widget.title != null
              ? Text(
                widget.title!,
                style: TextStyle(fontWeight: FontWeight.w600),
              )
              : null,
      centerTitle: true,
      elevation: 0,
      actions: [
        badges.Badge(
          showBadge: provider.bag.isNotEmpty,
          position: badges.BadgePosition.bottomStart(start: 0, bottom: 0),
          badgeContent: Text(
            provider.bag.length.toString(),
            style: TextStyle(fontSize: 10),
          ),
          child: IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CheckoutScreen()),
              );
            },
          ),
        ),
      ],
    );
  }
}
