import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  void _onMenuOptionSelected(BuildContext context, String option) {
    // Handle menu option actions
    switch (option) {
      case 'Settings':
        // Navigate to Settings page
        break;
      case 'Organization':
        // Navigate to Organization page
        break;
      case 'Backup':
        // Perform backup logic
        break;
      case 'Log Out':
        // Handle log out
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        color: Colors.blue[50], // Subtle background color
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          children: [
            _buildProfileHeader(),
            SizedBox(height: 20),
            _buildMenuOption(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () => _onMenuOptionSelected(context, 'Settings'),
            ),
            _buildMenuOption(
              icon: Icons.apartment,
              title: 'Organization',
              onTap: () => _onMenuOptionSelected(context, 'Organization'),
            ),
            _buildMenuOption(
              icon: Icons.backup,
              title: 'Backup',
              onTap: () => _onMenuOptionSelected(context, 'Backup'),
            ),
            _buildMenuOption(
              icon: Icons.logout,
              title: 'Log Out',
              onTap: () => _onMenuOptionSelected(context, 'Log Out'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile_placeholder.png'), // Add a placeholder image
        ),
        SizedBox(height: 10),
        Text(
          'John Doe', // Replace with dynamic username if needed
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          'johndoe@example.com', // Replace with dynamic email if needed
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
      ],
    );
  }

  Widget _buildMenuOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
