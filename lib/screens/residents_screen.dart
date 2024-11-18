import 'package:flutter/material.dart';

class ResidentsScreen extends StatefulWidget {
  @override
  _ResidentsScreenState createState() => _ResidentsScreenState();
}

class _ResidentsScreenState extends State<ResidentsScreen> {
  final List<Map<String, String>> _residents = List.generate(
    10,
    (index) => {
      'name': 'Resident Name $index',
      'room': 'Apartment #$index',
    },
  ); // Sample resident data
  String _searchQuery = '';
  
  @override
  Widget build(BuildContext context) {
    final filteredResidents = _residents.where((resident) {
      final searchLower = _searchQuery.toLowerCase();
      return resident['name']!.toLowerCase().contains(searchLower) ||
          resident['room']!.toLowerCase().contains(searchLower);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Residents'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search by name or room number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: filteredResidents.length,
              itemBuilder: (context, index) {
                final resident = filteredResidents[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 3,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(resident['name']![0]), // First letter of name
                      backgroundColor: Colors.blue[100],
                    ),
                    title: Text(resident['name']!),
                    subtitle: Text(resident['room']!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
