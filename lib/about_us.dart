import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final List<Map<String, String>> teamMembers;

  const InfoPage({super.key, required this.teamMembers});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Meet Our Team',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              runSpacing: 16.0,
              alignment: WrapAlignment.center,
              children: teamMembers.map((member) {
                return SizedBox(
                  width: 160,
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(member['image']!),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        member['name']!,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                   
                      const SizedBox(height: 4),
                      Text(
                        member['address']!,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        member['phone']!,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        member['email']!,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom( // Add styleFrom here
                backgroundColor: Colors.red, // Set the background color to red
                foregroundColor: Colors.white, // Set the text color to white for contrast
              ),
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}