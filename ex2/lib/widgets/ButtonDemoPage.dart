import 'package:flutter/material.dart';
import '../domains/ButtonType.dart';
import '../domains/IconPosition.dart';
import '../widgets/CuttomButton.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Demo'),
        backgroundColor: Colors.grey[200],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // Use MainAxisSize.min to make the column only as tall as its children
            mainAxisSize: MainAxisSize.min,
            children: [
              // Primary button (default type) with icon on the left (default position)
              CustomButton(
                buttonLabel: 'Submit',
                buttonIcon: Icons.check,
              ),
              const SizedBox(height: 16),

              // Secondary button with icon on the right
              CustomButton(
                buttonLabel: 'Time',
                buttonIcon: Icons.access_time,
                buttonType: ButtonType.secondary,
                iconPosition: IconPosition.right,
              ),
              const SizedBox(height: 16),

              // Disabled button with icon on the left
              CustomButton(
                buttonLabel: 'Account',
                buttonIcon: Icons.account_tree_sharp,
                buttonType: ButtonType.disabled,
              ),
              const SizedBox(height: 16),

              // Disabled button with icon on the right
              CustomButton(
                buttonLabel: 'Account',
                buttonIcon: Icons.account_tree_sharp,
                buttonType: ButtonType.disabled,
                iconPosition: IconPosition.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
