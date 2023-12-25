import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 28,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
