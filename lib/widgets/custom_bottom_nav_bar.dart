import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  CustomBottomNavBar({required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavBarItem(Icons.home, "Home", 0),
          _buildNavBarItem(Icons.local_shipping, "Packages", 1),
          SizedBox(width: 40), // For spacing around the raised button
          _buildNavBarItem(Icons.group, "Residents", 3),
          _buildNavBarItem(Icons.person, "Profile", 4),
        ],
      ),
    );
  }

  Widget _buildNavBarItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: index == currentIndex ? Colors.blue : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: index == currentIndex ? Colors.blue : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}