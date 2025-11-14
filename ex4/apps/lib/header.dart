import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final String titleText;
  final Color titleColor;
  final double titleFontSize;
  final FontWeight titleFontWeight;

  const HeaderWidget({
    super.key,
    this.backgroundColor = const Color(0xF5F7FFF5),
    this.titleText = 'Weather App',
    this.titleColor = Colors.black,
    this.titleFontSize = 20.0,
    this.titleFontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Text(
        titleText,
        style: TextStyle(
          color: titleColor,
          fontSize: titleFontSize,
          fontWeight: titleFontWeight,
        ),
      ),
      centerTitle: true,
      actions: const [
        IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: null,
        ),
        SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}