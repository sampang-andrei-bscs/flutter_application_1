import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_us.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Page',
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const ResumePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> teamMembers = [
      {
            'name': 'Andrei Sampang',
            'address': 'San Luis, Pampanga',
            'phone': '09123456789',
            'email': 'andrei@example.com',
            'image': 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMiMi0YAle1b2WkvBclOSXGqRAxFdj0nyeh6uEC',
      },
      
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Information',
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return InfoPage(teamMembers: teamMembers);
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ResumeCard(
            name: 'Andrei Sampang',
            address: 'San Luis, Pampanga',
            phone: '09123456789',
            email: 'andrei@example.com',
            image: 'https://rsv7mzgpyn.ufs.sh/f/RjBoytRTOWMiMi0YAle1b2WkvBclOSXGqRAxFdj0nyeh6uEC',
          ),
          
        ],
      ),
    );
  }
}

class ResumeCard extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  final String email;
  final String image;

  const ResumeCard({
    super.key,
    required this.name,
    required this.address,
    required this.phone,
    required this.email,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  
                  const SizedBox(height: 4),
                  Text(address),
                  Text(phone),
                  Text(email),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
