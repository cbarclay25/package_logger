import 'package:flutter/material.dart';

class PackagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Packages'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 10, // Placeholder for package count
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.local_shipping, color: Colors.blue),
              title: Text('Recipient Name $index'), // Placeholder for recipient name
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Address: 123 Street $index'),
                  Text('Carrier: Carrier Name'),
                ],
              ),
              trailing: Text(
                'Status: Delivered', // Placeholder for status
                style: TextStyle(color: Colors.green),
              ),
            ),
          );
        },
      ),
    );
  }
}
