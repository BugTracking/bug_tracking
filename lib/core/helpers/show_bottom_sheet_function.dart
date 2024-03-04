import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context, List<Widget> children) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return ClipRect(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white, // Change color as needed
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      );
    },
  );
}
