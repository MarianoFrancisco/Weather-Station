import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final String? imagePath;

  const CustomInkWell({
    required this.onTap,
    required this.child,
    this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        // color: Colors.grey[200],
        child: Row(
          children: [
            if (imagePath != null) ...[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(
                  imagePath!,
                  width: 24,
                  height: 24,
                ),
              ),
            ],
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
