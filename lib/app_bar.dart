import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_color/color_provider.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    ColorProvider provider = Provider.of<ColorProvider>(context);
    return Consumer<ColorProvider>(builder: (ctx, value, _) {
      return AppBar(
        title: Text(
          "Color provider",
          style: TextStyle(color: value.color),
        ),
        centerTitle: true,
      );
    });
  }
}
