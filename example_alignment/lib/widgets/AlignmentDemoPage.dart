import 'package:flutter/material.dart';

class AlignmentDemoPage extends StatelessWidget {
  const AlignmentDemoPage({super.key});

  // Helper widget to build the small colored boxes
  Widget _buildBox(String text, Color color) {
    return Container(
      color: color,
      width: 50,
      height: 50,
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  // Helper widget for section titles
  Widget _buildTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alignment Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align titles to the left
          children: [
            // --- COLUMN: mainAxisAlignment ---
            _buildTitle('Column: mainAxisAlignment'),
            Text(
                'Controls vertical spacing in a Column. (Main Axis = Vertical)'),
            const SizedBox(height: 8),
            const Text('mainAxisAlignment: MainAxisAlignment.start (default)'),
            Container(
              height: 200,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildBox('1', Colors.red),
                  _buildBox('2', Colors.green),
                  _buildBox('3', Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('mainAxisAlignment: MainAxisAlignment.center'),
            Container(
              height: 200,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildBox('1', Colors.red),
                  _buildBox('2', Colors.green),
                  _buildBox('3', Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('mainAxisAlignment: MainAxisAlignment.spaceBetween'),
            Container(
              height: 200,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildBox('1', Colors.red),
                  _buildBox('2', Colors.green),
                  _buildBox('3', Colors.blue),
                ],
              ),
            ),

            // --- COLUMN: crossAxisAlignment ---
            _buildTitle('Column: crossAxisAlignment'),
            Text(
                'Controls horizontal alignment in a Column. (Cross Axis = Horizontal)'),
            const SizedBox(height: 8),
            const Text('crossAxisAlignment: CrossAxisAlignment.start'),
            Container(
              width: double.infinity, // Give column width to show alignment
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBox('1', Colors.red),
                  _buildBox('2', Colors.green),
                  _buildBox('3', Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('crossAxisAlignment: CrossAxisAlignment.center (default)'),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildBox('1', Colors.red),
                  _buildBox('2', Colors.green),
                  _buildBox('3', Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('crossAxisAlignment: CrossAxisAlignment.end'),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildBox('1', Colors.red),
                  _buildBox('2', Colors.green),
                  _buildBox('3', Colors.blue),
                ],
              ),
            ),

            // --- ROW: mainAxisAlignment ---
            _buildTitle('Row: mainAxisAlignment'),
            Text(
                'Controls horizontal spacing in a Row. (Main Axis = Horizontal)'),
            const SizedBox(height: 8),
            const Text('mainAxisAlignment: MainAxisAlignment.start (default)'),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildBox('1', Colors.purple),
                  _buildBox('2', Colors.orange),
                  _buildBox('3', Colors.cyan),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('mainAxisAlignment: MainAxisAlignment.center'),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildBox('1', Colors.purple),
                  _buildBox('2', Colors.orange),
                  _buildBox('3', Colors.cyan),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('mainAxisAlignment: MainAxisAlignment.spaceBetween'),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildBox('1', Colors.purple),
                  _buildBox('2', Colors.orange),
                  _buildBox('3', Colors.cyan),
                ],
              ),
            ),

            // --- ROW: crossAxisAlignment ---
            _buildTitle('Row: crossAxisAlignment'),
            Text('Controls vertical alignment in a Row. (Cross Axis = Vertical)'),
            const SizedBox(height: 8),
            const Text('crossAxisAlignment: CrossAxisAlignment.start'),
            Container(
              height: 150, // Give row height to show alignment
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBox('1', Colors.purple),
                  _buildBox('2', Colors.orange),
                  _buildBox('3', Colors.cyan),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('crossAxisAlignment: CrossAxisAlignment.center (default)'),
            Container(
              height: 150,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildBox('1', Colors.purple),
                  _buildBox('2', Colors.orange),
                  _buildBox('3', Colors.cyan),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('crossAxisAlignment: CrossAxisAlignment.end'),
            Container(
              height: 150,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildBox('1', Colors.purple),
                  _buildBox('2', Colors.orange),
                  _buildBox('3', Colors.cyan),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
