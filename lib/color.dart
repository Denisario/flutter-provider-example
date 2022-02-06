import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_color/color_provider.dart';
import 'package:provider_color/main.dart';

class ColorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorProvider provider = Provider.of<ColorProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<ColorProvider>(builder: (context, value, _) {
              return AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: value.color,
                ),
              );
            }),
            Switch(
                value: provider.switchValue,
                onChanged: (value) {
                  provider.changeColor(value);
                }),
          ],
        ),
      ),
    );
  }
}
