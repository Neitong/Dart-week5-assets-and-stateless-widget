import '../domains/ButtonType.dart';
import 'package:flutter/material.dart';

import '../domains/IconPosition.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final IconData buttonIcon;
  final ButtonType buttonType;
  final IconPosition iconPosition;

  const CustomButton({
    super.key,
    required this.buttonLabel,
    required this.buttonIcon,
    this.buttonType = ButtonType.primary, // Default to primary
    this.iconPosition = IconPosition.left, // Default to left
  });

  /// Helper method to determine the button's background color based on its type.
  Color _getButtonColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey[400]!; // A slightly lighter grey
    }
  }

  /// Helper method to determine the text/icon color.
  /// Disabled buttons have darker text, others are white.
  Color _getForegroundColor() {
    return buttonType == ButtonType.disabled ? Colors.black54 : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = _getButtonColor();
    final Color foregroundColor = _getForegroundColor();

    // Create the Icon and Text widgets
    final Widget icon = Icon(
      buttonIcon,
      color: foregroundColor,
      size: 20.0,
    );

    final Widget label = Text(
      buttonLabel,
      style: TextStyle(
        color: foregroundColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );

    // Create a list of children for the Row
    final List<Widget> children = [
      icon,
      const SizedBox(width: 8), // Space between icon and text
      label,
    ];

    return Container(
      width: double.infinity, // Make the button take full width available
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50.0), // Pill shape
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min, // Keep icon and text together
          // Conditionally reverse the children list if position is 'right'
          children:
          iconPosition == IconPosition.left ? children : children.reversed.toList(),
        ),
      ),
    );
  }
}
